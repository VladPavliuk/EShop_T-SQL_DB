CREATE PROCEDURE [dbo].[GetAllPriceTypes]
AS

BEGIN
	SELECT 
		[Id], 
		[Title]
	FROM [dbo].[PriceType]
	WHERE [DeletedAt] IS NULL
END
