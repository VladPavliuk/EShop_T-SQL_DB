CREATE PROCEDURE [dbo].[GetAllProductPhoto]
AS

BEGIN
	SELECT 
		[Id], 
		[Title], 
		[Image], 
		[ProductId]
	FROM [dbo].[ProductPhoto]
	WHERE [DeletedAt] IS NULL
END
