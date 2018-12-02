CREATE PROCEDURE [dbo].[DeleteUserTypePriceTypeRelationById]
	@UserTypePriceTypeRelationId INT
AS

BEGIN
	UPDATE [dbo].[UserTypePriceTypeRelation]
	SET [DeletedAt] = getDate()
	WHERE [Id] = @UserTypePriceTypeRelationId 
		AND [DeletedAt] IS NULL
END
