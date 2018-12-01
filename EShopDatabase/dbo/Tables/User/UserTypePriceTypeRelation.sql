CREATE TABLE [dbo].[UserTypePriceTypeRelation]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [UserTypeId] INT NOT NULL, 
    [PriceTypeId] INT NOT NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL, 
    CONSTRAINT [FK_UserTypePriceTypeRelation_UserType] FOREIGN KEY ([UserTypeId]) REFERENCES [UserType]([Id]), 
    CONSTRAINT [FK_UserTypePriceTypeRelation_PriceType] FOREIGN KEY ([PriceTypeId]) REFERENCES [PriceType]([Id]), 
    CONSTRAINT [AK_UserTypePriceTypeRelation_UserType_PriceType] UNIQUE ([UserTypeId], [PriceTypeId])
)
GO

CREATE TRIGGER trg_user_type_price_type_relation_update ON [dbo].[UserTypePriceTypeRelation] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[UserTypePriceTypeRelation]
	SET UpdatedAt = getDate()
	FROM [dbo].[UserTypePriceTypeRelation] INNER JOIN deleted d
	ON [dbo].[UserTypePriceTypeRelation].Id = d.Id
END
GO
