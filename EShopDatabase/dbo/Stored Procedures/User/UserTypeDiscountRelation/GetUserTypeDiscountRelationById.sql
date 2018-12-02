CREATE PROCEDURE [dbo].[GetUserTypeDiscountRelationById]
	@UserTypeDiscountRelationId INT
AS

BEGIN
	SELECT 
		[Id], 
		[UserTypeId], 
		[DiscountId]
	FROM [dbo].[UserTypeDiscountRelation]
	WHERE [Id] = @UserTypeDiscountRelationId 
		AND [DeletedAt] IS NULL
END
