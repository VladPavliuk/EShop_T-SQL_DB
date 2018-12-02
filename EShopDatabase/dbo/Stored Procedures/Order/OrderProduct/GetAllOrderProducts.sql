CREATE PROCEDURE [dbo].[GetAllOrderProducts]
AS

BEGIN
	SELECT 
		[Id], 
		[OrderId], 
		[ProductId], 
		[Amount], 
		[Price]
	FROM [dbo].[OrderProduct]
	WHERE [DeletedAt] IS NULL
END
