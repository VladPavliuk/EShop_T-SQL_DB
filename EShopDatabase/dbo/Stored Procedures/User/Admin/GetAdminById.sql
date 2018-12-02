CREATE PROCEDURE [dbo].[GetAdminById]
	@AdminId INT
AS

BEGIN
	SELECT 
		[Id], 
		[FirstName], 
		[LastName], 
		[Email]
	FROM [dbo].[Admin]
	WHERE [Id] = @AdminId 
		AND [DeletedAt] IS NULL
END
