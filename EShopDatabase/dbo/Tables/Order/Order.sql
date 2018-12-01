CREATE TABLE [dbo].[Order]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ToPay] DECIMAL(18, 2) NOT NULL, 
    [UserId] INT NOT NULL, 
    [PaymentFormatId] INT NOT NULL, 
    [TransportationOptionId] INT NOT NULL, 
    [SettlementToSend] NVARCHAR(50) NOT NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL, 
    CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]), 
    CONSTRAINT [FK_Order_PaymentFormat] FOREIGN KEY ([PaymentFormatId]) REFERENCES [PaymentFormat]([Id]), 
    CONSTRAINT [FK_Order_TransportationOption] FOREIGN KEY ([TransportationOptionId]) REFERENCES [TransportationOption]([Id])
)
GO

CREATE TRIGGER trg_order_update ON [dbo].[Order] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[Order]
	SET UpdatedAt = getDate()
	FROM [dbo].[Order] INNER JOIN deleted d
	ON [dbo].[Order].Id = d.Id
END
GO
