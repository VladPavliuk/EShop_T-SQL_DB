CREATE PROCEDURE [dbo].[DeleteDiscountById]
	@CategoryId INT
AS

BEGIN
	UPDATE [dbo].[Discount]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @CategoryId 
		AND [DeletedAt] IS NULL 
END
