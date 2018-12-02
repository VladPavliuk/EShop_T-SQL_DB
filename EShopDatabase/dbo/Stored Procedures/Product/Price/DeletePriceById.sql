CREATE PROCEDURE [dbo].[DeletePriceById]
	@PriceId INT
AS

BEGIN
	UPDATE [dbo].[Price]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @PriceId 
		AND [DeletedAt] IS NULL
END
