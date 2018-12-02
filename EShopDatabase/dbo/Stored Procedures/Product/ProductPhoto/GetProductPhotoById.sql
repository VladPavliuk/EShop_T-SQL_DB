CREATE PROCEDURE [dbo].[GetProductPhotoById]
	@ProductPhotoId INT
AS

BEGIN
	SELECT 
		[Id], 
		[Title], 
		[Image], 
		[ProductId]
	FROM [dbo].[ProductPhoto]
	WHERE [Id] = @ProductPhotoId 
		AND [DeletedAt] IS NULL
END
