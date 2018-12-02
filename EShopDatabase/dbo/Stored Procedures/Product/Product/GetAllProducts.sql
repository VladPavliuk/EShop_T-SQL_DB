CREATE PROCEDURE [dbo].[GetAllProducts]
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
	WHERE [DeletedAt] IS NULL 
END
