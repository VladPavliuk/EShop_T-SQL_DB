CREATE PROCEDURE [dbo].[GetPriceTypeById]
	@PriceTypeId INT
AS

BEGIN
	SELECT 
		[Id], 
		[Title]
	FROM [dbo].[PriceType]
	WHERE [Id] = @PriceTypeId 
		AND [DeletedAt] IS NULL
END
