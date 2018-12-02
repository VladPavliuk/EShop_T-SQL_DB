CREATE PROCEDURE [dbo].[GetAllOrders]
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
	WHERE [DeletedAt] IS NULL
END
