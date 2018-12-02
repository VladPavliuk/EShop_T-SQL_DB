CREATE PROCEDURE [dbo].[GetAllPaymentFormats]
AS

BEGIN
	SELECT 
		[Id], 
		[Title]
	FROM [dbo].[PaymentFormat]
	WHERE [DeletedAt] IS NULL
END
