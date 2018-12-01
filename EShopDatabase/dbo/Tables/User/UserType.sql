CREATE TABLE [dbo].[UserType]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate()
)
GO

CREATE TRIGGER trg_user_type_update ON [dbo].[UserType] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[UserType]
	SET UpdatedAt = getDate()
	FROM [dbo].[UserType] INNER JOIN deleted d
	ON [dbo].[UserType].Id = d.Id
END
GO
