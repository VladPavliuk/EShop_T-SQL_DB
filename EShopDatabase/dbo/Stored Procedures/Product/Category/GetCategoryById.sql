CREATE PROCEDURE [dbo].[GetCategoryById]
	@CategoryId INT
AS

BEGIN
	SELECT 
		[Id], 
		[Title], 
		[TitleOnHomePage], 
		[TitleOnCategoryPage], 
		[Description], 
		[Image]
	FROM [dbo].[Category]
	WHERE [Id] = @CategoryId 
		AND [DeletedAt] IS NULL 
END
