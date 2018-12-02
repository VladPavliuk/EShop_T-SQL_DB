CREATE PROCEDURE [dbo].[DeleteAdminById]
	@AdminId INT
AS

BEGIN
	UPDATE [dbo].[Admin]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @AdminId 
		AND [DeletedAt] IS NULL
END
