CREATE PROCEDURE [dbo].[DeletePaymentFormat]
	@PaymentFormatId INT
AS

BEGIN
	UPDATE [dbo].[PaymentFormat]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @PaymentFormatId 
		AND [DeletedAt] IS NULL
END
