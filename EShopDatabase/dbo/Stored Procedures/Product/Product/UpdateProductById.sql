CREATE PROCEDURE [dbo].[UpdateProductById]
	 @ProductId INT
	,@Title NVARCHAR(50)
	,@CategoryId INT
	,@ImageOnProductPage VARBINARY(MAX) = NULL 
	,@ImageOnCategoryPage VARBINARY(MAX) = NULL 
	,@IsDiscountAffectPrice BIT
	,@OrderInShoppingCart INT
	,@AmountInStore INT
AS

BEGIN
	IF (@AmountInStore < 0 OR @OrderInShoppingCart < 1)
	BEGIN
		RAISERROR (15600, -1, -1, 'UpdateProductById')
		RETURN
	END

	UPDATE [dbo].[Product]
	SET [Title] = @Title, 
		[CategoryId] = @CategoryId, 
		[ImageOnProductPage] = @ImageOnProductPage, 
		[ImageOnCategoryPage] = @ImageOnCategoryPage, 
		[IsDiscountAffectPrice] = @IsDiscountAffectPrice, 
		[OrderInShoppingCart] = @OrderInShoppingCart, 
		[AmountInStore] = @AmountInStore
	WHERE [Id] = @ProductId 
		AND [DeletedAt] IS NULL 
END
