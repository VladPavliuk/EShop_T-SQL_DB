CREATE TABLE [dbo].[Price]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ProductId] INT NOT NULL, 
    [PriceTypeId] INT NOT NULL, 
    [Value] DECIMAL(18, 2) NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    CONSTRAINT [FK_Price_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id]), 
    CONSTRAINT [FK_Price_PriceType] FOREIGN KEY ([PriceTypeId]) REFERENCES [PriceType]([Id]), 
    CONSTRAINT [AK_Price_Product_PriceType] UNIQUE ([ProductId], [PriceTypeId])
)
GO

CREATE TRIGGER trg_price_update ON [dbo].[Price] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[Price]
	SET UpdatedAt = getDate()
	FROM [dbo].[Price] INNER JOIN deleted d
	ON [dbo].[Price].Id = d.Id
END
GO
