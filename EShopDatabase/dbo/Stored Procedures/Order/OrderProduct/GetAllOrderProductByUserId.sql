CREATE PROCEDURE [dbo].[GetAllOrderProductsByUserId]
	@UserId INT
AS

BEGIN
	SELECT 
		OP.[Id],  
		OP.[Amount] AS ProductAmount, 
		OP.[Price] AS ProductPrice,
		OP.[ProductId],
		U.[Id] AS UserId, 
		U.[FirstName], 
		U.[LastName], 
		U.[UserTypeId], 
		U.[Email], 
		U.[Phone]
	FROM [dbo].[OrderProduct] AS OP
	INNER JOIN [dbo].[Order] AS O ON OP.[OrderId] = O.[Id]
	INNER JOIN [dbo].[User] AS U ON O.[UserId] = U.[Id]
	WHERE O.[UserId] = @UserId 
		AND OP.[DeletedAt] IS NULL
END
