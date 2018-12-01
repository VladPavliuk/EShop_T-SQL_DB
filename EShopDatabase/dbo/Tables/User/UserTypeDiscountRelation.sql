CREATE TABLE [dbo].[UserTypeDiscountRelation]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DiscountId] INT NOT NULL, 
    [UserTypeId] INT NOT NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL, 
    CONSTRAINT [FK_UserTypeDiscountRelation_Discount] FOREIGN KEY ([DiscountId]) REFERENCES [Discount]([Id]), 
    CONSTRAINT [FK_UserTypeDiscountRelation_UserType] FOREIGN KEY ([UserTypeId]) REFERENCES [UserType]([Id]), 
    CONSTRAINT [AK_UserTypeDiscountRelation_Discount_UserType] UNIQUE ([DiscountId], [UserTypeId])
)
GO

CREATE TRIGGER trg_user_type_discount_relation_update ON [dbo].[UserTypeDiscountRelation] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[UserTypeDiscountRelation]
	SET UpdatedAt = getDate()
	FROM [dbo].[UserTypeDiscountRelation] INNER JOIN deleted d
	ON [dbo].[UserTypeDiscountRelation].Id = d.Id
END
GO
