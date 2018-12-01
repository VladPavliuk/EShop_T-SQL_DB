CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [UserTypeId] INT NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Phone] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(500) NOT NULL, 
    [Token] NVARCHAR(500) NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    CONSTRAINT [FK_User_UserType] FOREIGN KEY ([UserTypeId]) REFERENCES [UserType]([Id]), 
    CONSTRAINT [AK_User_Email] UNIQUE ([Email])
)
GO

CREATE TRIGGER trg_user_update ON [dbo].[User] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[User]
	SET UpdatedAt = getDate()
	FROM [dbo].[User] INNER JOIN deleted d
	ON [dbo].[User].Id = d.Id
END
GO
