CREATE PROCEDURE [dbo].[DeleteProductPhotoById]
	@ProductPhotoId INT
AS

BEGIN
	UPDATE [dbo].[ProductPhoto]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @ProductPhotoId 
		AND [DeletedAt] IS NULL
END
