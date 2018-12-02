CREATE PROCEDURE [dbo].[CreateDiscount]
	 @Title NVARCHAR(50) 
	,@Description NVARCHAR(500) = NULL
	,@Image VARBINARY(MAX) = NULL 
	,@ActiveThreshold INT = 0
	,@NumericDiscountValue INT = 0
	,@PercentDiscountValue INT = 0
	,@IsFreeDelivery BIT = 0
AS

BEGIN
	IF (@ActiveThreshold < 0 OR @NumericDiscountValue < 0 OR @PercentDiscountValue < 0 OR @PercentDiscountValue > 100)
	BEGIN
		RAISERROR (15600, -1, -1, 'CreateDiscount')
		RETURN
	END

	INSERT INTO [dbo].[Discount](
		[Title], 
		[Description], 
		[Image], 
		[ActiveThreshold], 
		[NumericDiscountValue], 
		[PercentDiscountValue], 
		[IsFreeDelivery]
	) VALUES (
		@Title, 
		@Description, 
		@Image, 
		@ActiveThreshold, 
		@NumericDiscountValue, 
		@PercentDiscountValue, 
		@IsFreeDelivery
	)
END
