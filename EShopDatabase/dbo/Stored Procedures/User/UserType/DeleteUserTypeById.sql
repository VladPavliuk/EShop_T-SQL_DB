CREATE PROCEDURE [dbo].[DeleteUserType]
	@UserTypeId INT
AS

BEGIN
	UPDATE [dbo].[UserType]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @UserTypeId 
		AND [DeletedAt] IS NULL
END
