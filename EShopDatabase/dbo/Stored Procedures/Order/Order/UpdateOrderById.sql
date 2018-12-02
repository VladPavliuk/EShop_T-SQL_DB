CREATE PROCEDURE [dbo].[UpdateOrderById]
	 @OrderId INT
	,@ToPay DECIMAL(18, 2)
	,@UserId INT
	,@PaymentFormatId INT 
	,@TransportationOptionId INT
	,@SettlementToSend NVARCHAR(50)
AS

BEGIN
	IF (@ToPay < 0)
	BEGIN
		RAISERROR (15600, -1, -1, 'UpdateOrderById')
		RETURN
	END

	UPDATE [dbo].[Order]
	SET 
		[ToPay] = @ToPay, 
		[UserId] = @UserId, 
		[PaymentFormatId] = @PaymentFormatId, 
		[TransportationOptionId] = @TransportationOptionId, 
		[SettlementToSend] = @SettlementToSend
	WHERE [Id] = @OrderId
		AND [DeletedAt] IS NULL
END
