CREATE PROCEDURE [dbo].[GetAllUserTypes]
AS

BEGIN
	SELECT 
		[Id], 
		[Title]
	FROM [dbo].[UserType]
	WHERE [DeletedAt] IS NULL
END
