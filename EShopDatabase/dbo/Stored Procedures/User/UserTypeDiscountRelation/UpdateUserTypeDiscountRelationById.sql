CREATE PROCEDURE [dbo].[UpdateUserTypeDiscountRelation]
	 @UserTypeDiscountRelationId INT
	,@UserTypeId INT
	,@DiscountId INT
AS

BEGIN
	UPDATE [dbo].[UserTypeDiscountRelation]
	SET
		[UserTypeId] = @UserTypeId, 
		[DiscountId] = @DiscountId
	WHERE [Id] = @UserTypeDiscountRelationId 
		AND [DeletedAt] IS NULL
END
