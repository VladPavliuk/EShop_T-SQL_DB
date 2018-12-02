CREATE PROCEDURE [dbo].[GetOrderProductById]
	@OrderProductId INT
AS

BEGIN
	SELECT 
		[Id], 
		[OrderId], 
		[ProductId], 
		[Amount], 
		[Price]
	FROM [dbo].[OrderProduct]
	WHERE [Id] = @OrderProductId
		AND [DeletedAt] IS NULL
END
