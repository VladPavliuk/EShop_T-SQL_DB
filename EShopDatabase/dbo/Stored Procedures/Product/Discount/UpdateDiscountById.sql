CREATE PROCEDURE [dbo].[UpdateDiscountById]
	 @DiscountId INT
	,@Title NVARCHAR(50) 
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
		RAISERROR (15600, -1, -1, 'UpdateDiscountById')
		RETURN
	END

	UPDATE [dbo].[Discount]
	SET
		[Title] = @Title, 
		[Description] = @Description, 
		[Image] = @Image, 
		[ActiveThreshold] = @ActiveThreshold, 
		[NumericDiscountValue] = @NumericDiscountValue, 
		[PercentDiscountValue] = @PercentDiscountValue, 
		[IsFreeDelivery] = @IsFreeDelivery
	WHERE [Id] = @DiscountId 
		AND [DeletedAt] IS NULL 
END
