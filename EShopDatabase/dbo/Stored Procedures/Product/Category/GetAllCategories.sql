CREATE PROCEDURE [dbo].[GetAllCategories]
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
	WHERE [DeletedAt] IS NULL 
END
