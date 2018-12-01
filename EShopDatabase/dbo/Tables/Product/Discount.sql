CREATE TABLE [dbo].[Discount]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(500) NULL, 
    [ImagePath] NVARCHAR(50) NULL, 
    [ActiveThreshold] INT NOT NULL DEFAULT 0, 
    [NumericDiscountValue] INT NOT NULL DEFAULT 0, 
    [PercentDiscountValue] INT NOT NULL DEFAULT 0, 
    [IsFreeDelivery] BIT NOT NULL DEFAULT 0, 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [CreatedAt] DATETIME NULL DEFAULT getDate()
)
GO

CREATE TRIGGER trg_discount_update ON [dbo].[Discount] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[Discount]
	SET UpdatedAt = getDate()
	FROM [dbo].[Discount] INNER JOIN deleted d
	ON [dbo].[Discount].Id = d.Id
END
GO
