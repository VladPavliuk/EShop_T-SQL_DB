CREATE PROCEDURE [dbo].[GetTransportationOptionById]
	@TransportationOptionId INT
AS

BEGIN
	SELECT 
		[Id], 
		[Title]
	FROM [dbo].[TransportationOption]
	WHERE [Id] = @TransportationOptionId 
		AND [DeletedAt] IS NULL
END
