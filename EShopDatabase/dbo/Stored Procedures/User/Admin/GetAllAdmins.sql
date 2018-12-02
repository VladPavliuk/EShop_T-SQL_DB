CREATE PROCEDURE [dbo].[GetAllAdmins]
AS

BEGIN
	SELECT 
		[Id], 
		[FirstName], 
		[LastName], 
		[Email]
	FROM [dbo].[Admin]
	WHERE [DeletedAt] IS NULL
END
