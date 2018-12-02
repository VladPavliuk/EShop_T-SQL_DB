CREATE PROCEDURE [dbo].[DeleteTransportationOption]
	@TransportationOptionId INT
AS

BEGIN
	UPDATE [dbo].[TransportationOption]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @TransportationOptionId 
		AND [DeletedAt] IS NULL
END
