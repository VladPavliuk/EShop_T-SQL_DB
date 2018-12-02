CREATE PROCEDURE [dbo].[GetAllUserTypeDiscountRelations]
AS

BEGIN
	SELECT 
		[Id], 
		[UserTypeId], 
		[DiscountId]
	FROM [dbo].[UserTypeDiscountRelation]
	WHERE [DeletedAt] IS NULL
END
