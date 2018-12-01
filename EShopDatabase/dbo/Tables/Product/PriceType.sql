CREATE TABLE [dbo].[PriceType]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL
)
GO

CREATE TRIGGER trg_price_type_update ON [dbo].[PriceType] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[PriceType]
	SET UpdatedAt = getDate()
	FROM [dbo].[PriceType] INNER JOIN deleted d
	ON [dbo].[PriceType].Id = d.Id
END
GO
