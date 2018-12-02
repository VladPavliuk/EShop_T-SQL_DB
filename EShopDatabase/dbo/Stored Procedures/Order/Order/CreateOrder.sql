CREATE PROCEDURE [dbo].[CreateOrder]
	 @ToPay DECIMAL(18, 2)
	,@UserId INT
	,@PaymentFormatId INT 
	,@TransportationOptionId INT
	,@SettlementToSend NVARCHAR(50)
AS

BEGIN
	IF (@ToPay < 0)
	BEGIN
		RAISERROR (15600, -1, -1, 'CreateOrder')
		RETURN
	END

	INSERT INTO [dbo].[Order]( 
		[ToPay], 
		[UserId], 
		[PaymentFormatId], 
		[TransportationOptionId], 
		[SettlementToSend]
	) VALUES (
		 @ToPay
		,@UserId
		,@PaymentFormatId
		,@TransportationOptionId
		,@SettlementToSend
	)
END
