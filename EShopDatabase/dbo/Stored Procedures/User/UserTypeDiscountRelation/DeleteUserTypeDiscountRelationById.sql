CREATE PROCEDURE [dbo].[DeleteUserTypeDiscountRelationById]
	@UserTypeDiscountRelationId INT
AS

BEGIN
	UPDATE [dbo].[UserTypeDiscountRelation]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @UserTypeDiscountRelationId 
		AND [DeletedAt] IS NULL
END
