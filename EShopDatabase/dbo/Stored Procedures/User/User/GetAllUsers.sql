CREATE PROCEDURE [dbo].[GetAllUsers]
AS

BEGIN
	SELECT 
		[Id], 
		[FirstName], 
		[LastName], 
		[Email]
	FROM [dbo].[User]
	WHERE [DeletedAt] IS NULL
END
