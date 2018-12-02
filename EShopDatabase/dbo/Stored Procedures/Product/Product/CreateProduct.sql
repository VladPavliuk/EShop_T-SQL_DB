CREATE PROCEDURE [dbo].[CreateProduct]
	 @Title NVARCHAR(50)
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
		RAISERROR (15600, -1, -1, 'CreateProduct')
		RETURN
	END

	INSERT INTO [dbo].[Product]( 
		[Title], 
		[CategoryId], 
		[ImageOnProductPage], 
		[ImageOnCategoryPage], 
		[IsDiscountAffectPrice], 
		[OrderInShoppingCart], 
		[AmountInStore]
	) VALUES (
		@Title,
		@CategoryId,
		@ImageOnProductPage,
		@ImageOnCategoryPage,
		@IsDiscountAffectPrice,
		@OrderInShoppingCart,
		@AmountInStore
	)
END
