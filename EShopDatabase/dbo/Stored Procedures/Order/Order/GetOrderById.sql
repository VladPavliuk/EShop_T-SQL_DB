CREATE PROCEDURE [dbo].[GetOrderById]
	@OrderId INT
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
	WHERE [Id] = @OrderId 
		AND [DeletedAt] IS NULL
END
