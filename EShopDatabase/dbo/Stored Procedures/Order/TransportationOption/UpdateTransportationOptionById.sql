CREATE PROCEDURE [dbo].[UpdateTransportationOptionById]
	 @TransportationOptionId INT
	,@Title NVARCHAR(50)
AS

BEGIN
	UPDATE [dbo].[TransportationOption]
	SET
		[Title] = @Title
	WHERE [Id] = @TransportationOptionId
		AND [DeletedAt] IS NULL
END
