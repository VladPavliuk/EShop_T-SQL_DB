CREATE PROCEDURE [dbo].[DeleteCategoryById]
	@CategoryId INT
AS

BEGIN
	UPDATE [dbo].[Category]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @CategoryId 
		AND [DeletedAt] IS NULL 
END
