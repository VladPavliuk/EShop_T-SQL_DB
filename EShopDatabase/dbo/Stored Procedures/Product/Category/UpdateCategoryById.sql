CREATE PROCEDURE [dbo].[UpdateCategoryById]
	 @CategoryId INT
	,@Title NVARCHAR(50) 
	,@TitleOnHomePage NVARCHAR(50) = NULL
	,@TitleOnCategoryPage NVARCHAR(50) = NULL 
	,@Description NVARCHAR(500) = NULL
	,@Image VARBINARY(MAX) = NULL
AS

BEGIN
	UPDATE [dbo].[Category]
	SET 
		[Title] = @Title,
		[TitleOnHomePage] = @TitleOnHomePage, 
		[TitleOnCategoryPage] = @TitleOnCategoryPage, 
		[Description] = @Description, 
		[Image] = @Image
	WHERE [Id] = @CategoryId 
		AND [DeletedAt] IS NULL 
END
