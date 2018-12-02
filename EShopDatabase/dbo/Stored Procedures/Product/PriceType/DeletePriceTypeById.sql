CREATE PROCEDURE [dbo].[DeletePriceTypeById]
	@PriceTypeId INT
AS

BEGIN
	UPDATE [dbo].[PriceType]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @PriceTypeId 
		AND [DeletedAt] IS NULL
END
