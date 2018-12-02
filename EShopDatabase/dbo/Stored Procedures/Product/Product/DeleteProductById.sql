CREATE PROCEDURE [dbo].[DeleteProductById]
	@ProductId INT
AS

BEGIN
	UPDATE [dbo].[Product]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @ProductId 
		AND [DeletedAt] IS NULL 
END
