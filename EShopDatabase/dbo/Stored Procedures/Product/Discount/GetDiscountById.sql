CREATE PROCEDURE [dbo].[GetDiscountById]
	@DiscountId int
AS

BEGIN
	SELECT 
		[Id], 
		[Title], 
		[Description], 
		[Image], 
		[ActiveThreshold], 
		[NumericDiscountValue], 
		[PercentDiscountValue], 
		[IsFreeDelivery]
	FROM [dbo].[Discount]
	WHERE [Id] = @DiscountId 
		AND [DeletedAt] IS NULL 
END
