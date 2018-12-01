CREATE TABLE [dbo].[Category]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [TitleOnHomePage] NVARCHAR(50) NULL, 
    [TitleOnCategoryPage] NVARCHAR(50) NULL, 
    [Description] NVARCHAR(500) NULL, 
    [ImagePath] NVARCHAR(50) NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate(), 
    [DeletedAt] DATETIME NULL 
)
GO

CREATE TRIGGER trg_category_update ON [dbo].[Category] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[Category]
	SET UpdatedAt = getDate()
	FROM [dbo].[Category] INNER JOIN deleted d
	ON [dbo].[Category].Id = d.Id
END
GO
