CREATE PROCEDURE [dbo].[GetUserById]
	@UserId INT
AS

BEGIN
	SELECT 
		[Id], 
		[FirstName], 
		[LastName], 
		[Email]
	FROM [dbo].[User]
	WHERE [Id] = @UserId 
		AND [DeletedAt] IS NULL
END
