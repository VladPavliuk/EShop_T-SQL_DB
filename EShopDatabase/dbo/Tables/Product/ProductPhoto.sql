CREATE TABLE [dbo].[ProductPhoto]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NULL, 
    [ImagePath] NVARCHAR(50) NOT NULL, 
    [ProductId] INT NOT NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL, 
    CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id])
)
GO

CREATE TRIGGER trg_product_photo_update ON [dbo].[OrderProduct] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[ProductPhoto]
	SET UpdatedAt = getDate()
	FROM [dbo].[ProductPhoto] INNER JOIN deleted d
	ON [dbo].[ProductPhoto].Id = d.Id
END
GO
