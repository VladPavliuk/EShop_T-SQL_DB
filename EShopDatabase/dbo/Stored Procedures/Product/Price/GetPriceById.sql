CREATE PROCEDURE [dbo].[GetPriceById]
	@PriceId INT
AS

BEGIN
	SELECT 
		[Id], 
		[ProductId], 
		[PriceTypeId], 
		[Value]
	FROM [dbo].[Price]
	WHERE [Id] = @PriceId 
		AND [DeletedAt] IS NULL
END
