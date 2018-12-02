CREATE PROCEDURE [dbo].[GetAllPrices]
AS

BEGIN
	SELECT 
		[Id], 
		[ProductId], 
		[PriceTypeId], 
		[Value]
	FROM [dbo].[Price]
	WHERE [DeletedAt] IS NULL
END
