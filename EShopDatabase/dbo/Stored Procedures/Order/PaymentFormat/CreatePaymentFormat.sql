CREATE PROCEDURE [dbo].[CreatePaymentFormat]
	 @Title NVARCHAR(50)
AS

BEGIN
	INSERT INTO [dbo].[PaymentFormat]( 
		[Title]
	) VALUES (
		@Title
	)
END
