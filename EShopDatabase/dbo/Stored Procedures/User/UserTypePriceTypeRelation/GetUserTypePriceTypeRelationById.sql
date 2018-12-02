CREATE PROCEDURE [dbo].[GetUserTypePriceTypeRelationById]
	@UserTypePriceTypeRelationId INT
AS

BEGIN
	SELECT 
		[Id], 
		[UserTypeId], 
		[PriceTypeId]
	FROM [dbo].[UserTypePriceTypeRelation]
	WHERE [Id] = @UserTypePriceTypeRelationId 
		AND [DeletedAt] IS NULL
END
