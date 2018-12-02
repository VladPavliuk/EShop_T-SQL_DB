CREATE PROCEDURE [dbo].[DeleteUser]
	@UserId INT
AS

BEGIN
	UPDATE [dbo].[User]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @UserId 
		AND [DeletedAt] IS NULL
END
