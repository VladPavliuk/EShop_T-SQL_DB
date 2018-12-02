CREATE PROCEDURE [dbo].[GetAllDiscounts]
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
	WHERE [DeletedAt] IS NULL 
END
