CREATE PROCEDURE [dbo].[CreateCategory]
	 @Title NVARCHAR(50)
	,@TitleOnHomePage NVARCHAR(50) = NULL
	,@TitleOnCategoryPage NVARCHAR(50) = NULL 
	,@Description NVARCHAR(500) = NULL 
	,@Image VARBINARY(MAX) = NULL
AS

BEGIN
	INSERT INTO [dbo].[Category]( 
		[Title], 
		[TitleOnHomePage], 
		[TitleOnCategoryPage], 
		[Description], 
		[Image]
	) VALUES (
		@Title,
		@TitleOnHomePage,
		@TitleOnCategoryPage,
		@Description,
		@Image
	)
END
