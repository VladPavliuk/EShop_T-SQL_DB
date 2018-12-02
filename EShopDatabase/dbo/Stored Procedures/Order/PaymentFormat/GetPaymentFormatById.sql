CREATE PROCEDURE [dbo].[GetPaymentFormatById]
	@PaymentFormatId INT
AS

BEGIN
	SELECT 
		[Id], 
		[Title]
	FROM [dbo].[PaymentFormat]
	WHERE [Id] = @PaymentFormatId 
		AND [DeletedAt] IS NULL
END
