CREATE TABLE [dbo].[Product]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
	[CategoryId] INT NOT NULL, 
    [ImagePathOnProductPage] NVARCHAR(50) NULL, 
    [ImagePathOnCategoryPage] NVARCHAR(50) NULL, 
    [IsDiscountAffectPrice] BIT NOT NULL DEFAULT 1, 
    [OrderInShoppingCart] INT NOT NULL, 
    [AmountInStore] INT NOT NULL DEFAULT 0, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL, 
    CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CategoryId]) REFERENCES [Category]([Id])
)
GO

CREATE TRIGGER trg_product_update ON [dbo].[Product] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[Product]
	SET UpdatedAt = getDate()
	FROM [dbo].[Product] INNER JOIN deleted d
	ON [dbo].[Product].Id = d.Id
END
GO
