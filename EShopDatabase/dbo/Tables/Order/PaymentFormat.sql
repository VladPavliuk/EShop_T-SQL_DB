CREATE TABLE [dbo].[PaymentFormat]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate()
)
GO

CREATE TRIGGER trg_payment_format_update ON [dbo].[PaymentFormat] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[PaymentFormat]
	SET UpdatedAt = getDate()
	FROM [dbo].[PaymentFormat] INNER JOIN deleted d
	ON [dbo].[PaymentFormat].Id = d.Id
END
GO
