CREATE PROCEDURE [dbo].[CreatePrice]
	 @ProductId INT
	,@PriceTypeId INT
	,@Value DECIMAL(18, 2)
AS

BEGIN
	IF (@Value < 0)
	BEGIN
		RAISERROR (15600, -1, -1, 'CreatePrice')
		RETURN
	END

	INSERT INTO [dbo].[Price]( 
		[ProductId], 
		[PriceTypeId], 
		[Value]
	) VALUES (
		@ProductId,
		@PriceTypeId,
		@Value
	)
END
