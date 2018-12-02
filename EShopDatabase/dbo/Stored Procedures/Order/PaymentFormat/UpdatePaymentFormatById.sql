CREATE PROCEDURE [dbo].[UpdatePaymentFormatById]
	 @PaymentFormatId INT
	,@Title NVARCHAR(50)
AS

BEGIN
	UPDATE [dbo].[PaymentFormat]
	SET
		[Title] = @Title
	WHERE [Id] = @PaymentFormatId
		AND [DeletedAt] IS NULL
END
