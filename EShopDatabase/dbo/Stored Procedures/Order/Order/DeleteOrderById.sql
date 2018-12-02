CREATE PROCEDURE [dbo].[DeleteOrderById]
	@OrderId INT
AS

BEGIN
	UPDATE [dbo].[Order]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @OrderId 
		AND [DeletedAt] IS NULL
END
