CREATE TABLE [dbo].[Admin]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(50) NOT NULL, 
    [Token] NVARCHAR(500) NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL, 
    CONSTRAINT [AK_Admin_Email] UNIQUE ([Email])
)
GO

CREATE TRIGGER trg_admin_update ON [dbo].[Admin] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[Admin]
	SET UpdatedAt = getDate()
	FROM [dbo].[Admin] INNER JOIN deleted d
	ON [dbo].[Admin].Id = d.Id
END
GO
