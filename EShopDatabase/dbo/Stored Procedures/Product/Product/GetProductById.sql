CREATE PROCEDURE [dbo].[GetProductById]
	@ProductId INT
AS

BEGIN
	SELECT 
		[Id], 
		[Title], 
		[CategoryId], 
		[ImageOnProductPage], 
		[ImageOnCategoryPage], 
		[IsDiscountAffectPrice], 
		[OrderInShoppingCart], 
		[AmountInStore]
	FROM [dbo].[Product]
	WHERE [Id] = @ProductId 
		AND [DeletedAt] IS NULL 
END
