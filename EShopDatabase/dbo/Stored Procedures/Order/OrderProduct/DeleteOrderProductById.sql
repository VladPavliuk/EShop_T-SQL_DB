CREATE PROCEDURE [dbo].[DeleteOrderProductById]
	@OrderProductId INT
AS

BEGIN
	UPDATE [dbo].[OrderProduct]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @OrderProductId 
		AND [DeletedAt] IS NULL
END
