CREATE PROCEDURE [dbo].[GetAllTransportationOptions]
AS

BEGIN
	SELECT 
		[Id], 
		[Title]
	FROM [dbo].[TransportationOption]
	WHERE [DeletedAt] IS NULL
END
