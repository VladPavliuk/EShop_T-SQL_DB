CREATE TABLE [dbo].[OrderProduct]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderId] INT NOT NULL, 
    [ProductId] INT NOT NULL, 
    [Amount] INT NOT NULL, 
    [Price] DECIMAL(18, 2) NOT NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL, 
    CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY ([OrderId]) REFERENCES [Order]([Id]), 
    CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id]),
	CONSTRAINT [AK_OrderProduct_Order_Product] UNIQUE([ProductId], [OrderId])
)
GO

CREATE TRIGGER trg_order_product_update ON [dbo].[OrderProduct] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[OrderProduct]
	SET UpdatedAt = getDate()
	FROM [dbo].[OrderProduct] INNER JOIN deleted d
	ON [dbo].[OrderProduct].Id = d.Id
END
GO
