CREATE PROCEDURE [dbo].[CreateOrderProduct]
	 @OrderId INT
    ,@ProductId INT 
    ,@Amount INT 
    ,@Price DECIMAL(18, 2) 
AS

BEGIN
	IF (@Amount < 0 OR @Price < 0)
	BEGIN
		RAISERROR (15600, -1, -1, 'CreateOrderProduct')
		RETURN
	END

	IF EXISTS(
		SELECT 1 FROM [dbo].[OrderProduct] 
		WHERE [OrderId] = @OrderId AND [ProductId] = @ProductId
	)
	BEGIN
		UPDATE [dbo].[OrderProduct] 
		SET [Amount] = [Amount] + @Amount 
		WHERE [OrderId] = @OrderId AND [ProductId] = @ProductId
	END

	ELSE

	BEGIN
		INSERT INTO [dbo].[OrderProduct]( 
			[OrderId], 
			[ProductId], 
			[Amount], 
			[Price]
		) VALUES (
			@OrderId,
			@ProductId,
			@Amount,
			@Price
		)
	END
END
