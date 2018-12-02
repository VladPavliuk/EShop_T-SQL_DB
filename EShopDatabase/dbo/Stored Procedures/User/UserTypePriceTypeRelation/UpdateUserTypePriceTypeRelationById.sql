CREATE PROCEDURE [dbo].[UpdateUserTypePriceTypeRelationById]
	 @UserTypePriceTypeRelationId INT
	,@UserTypeId INT
	,@PriceTypeId INT
AS

BEGIN
	UPDATE [dbo].[UserTypePriceTypeRelation]
	SET
		[UserTypeId] = @UserTypeId, 
		[PriceTypeId] = @PriceTypeId
	WHERE [Id] = @UserTypePriceTypeRelationId 
		AND [DeletedAt] IS NULL
END
