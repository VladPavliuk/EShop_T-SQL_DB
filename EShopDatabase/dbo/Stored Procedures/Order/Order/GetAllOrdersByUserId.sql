CREATE PROCEDURE [dbo].[GetAllOrdersByUserId]
	@UserId INT
AS

BEGIN
	SELECT 
		[Id], 
		[ToPay], 
		[UserId], 
		[PaymentFormatId], 
		[TransportationOptionId], 
		[SettlementToSend]
	FROM [dbo].[Order]
	WHERE [UserId] = @UserId 
		AND [DeletedAt] IS NULL
END
