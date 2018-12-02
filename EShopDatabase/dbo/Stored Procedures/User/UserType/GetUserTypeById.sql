CREATE PROCEDURE [dbo].[GetUserTypeById]
	@UserTypeId INT
AS

BEGIN
	SELECT 
		[Id], 
		[Title]
	FROM [dbo].[UserType]
	WHERE [Id] = @UserTypeId 
		AND [DeletedAt] IS NULL
END
