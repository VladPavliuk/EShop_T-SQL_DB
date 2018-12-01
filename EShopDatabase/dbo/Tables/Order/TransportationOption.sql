CREATE TABLE [dbo].[TransportationOption]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NULL, 
    [CreatedAt] DATETIME NULL DEFAULT getDate(), 
    [UpdatedAt] DATETIME NULL DEFAULT getDate()
)
GO

CREATE TRIGGER trg_transportation_option_update ON [dbo].[TransportationOption] FOR UPDATE AS
BEGIN
	UPDATE [dbo].[TransportationOption]
	SET UpdatedAt = getDate()
	FROM [dbo].[TransportationOption] INNER JOIN deleted d
	ON [dbo].[TransportationOption].Id = d.Id
END
GO
