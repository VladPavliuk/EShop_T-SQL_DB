CREATE PROCEDURE [dbo].[UpdateOrderProductById]
	 @OrderProductId INT
	,@OrderId INT
    ,@ProductId INT 
    ,@Amount INT 
    ,@Price DECIMAL(18, 2) 
AS

BEGIN
	IF (@Amount < 0 OR @Price < 0)
	BEGIN
		RAISERROR (15600, -1, -1, 'UpdateOrderProductById')
		RETURN
	END

	UPDATE [dbo].[OrderProduct]
	SET 
		[OrderId] = @OrderId, 
		[ProductId] = @ProductId, 
		[Amount] = @Amount, 
		[Price] = @Price
	WHERE [Id] = @OrderProductId
		AND [DeletedAt] IS NULL
END
