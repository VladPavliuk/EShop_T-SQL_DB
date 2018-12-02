CREATE PROCEDURE [dbo].[UpdatePriceById]
	 @PriceId INT
	,@ProductId INT
	,@PriceTypeId INT
	,@Value DECIMAL(18, 2)
AS

BEGIN
	IF (@Value < 0)
	BEGIN
		RAISERROR (15600, -1, -1, 'UpdatePrice')
		RETURN
	END

	UPDATE [dbo].[Price]
	SET
		[ProductId] = @ProductId, 
		[PriceTypeId] = @PriceTypeId, 
		[Value] = @Value
	WHERE [Id] = @PriceId 
		AND [DeletedAt] IS NULL
END
