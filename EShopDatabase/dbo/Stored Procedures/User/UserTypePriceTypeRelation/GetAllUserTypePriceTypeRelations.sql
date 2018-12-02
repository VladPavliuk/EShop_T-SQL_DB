CREATE PROCEDURE [dbo].[GetAllUserTypePriceTypeRelations]
AS

BEGIN
	SELECT 
		[Id], 
		[UserTypeId], 
		[PriceTypeId]
	FROM [dbo].[UserTypePriceTypeRelation]
	WHERE [DeletedAt] IS NULL
END
