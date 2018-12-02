CREATE PROCEDURE [dbo].[UpdateProductPhoto]
	 @ProductPhotoId INT
	,@Title NVARCHAR(50) = NULL
	,@Image VARBINARY(MAX)
    ,@ProductId INT
AS

BEGIN
	UPDATE [dbo].[ProductPhoto]
	SET
		[Title] = @Title,
		[Image] = @Image,
		[ProductId] = @ProductId
	WHERE [Id] = @ProductPhotoId
		AND [DeletedAt] IS NULL
END
