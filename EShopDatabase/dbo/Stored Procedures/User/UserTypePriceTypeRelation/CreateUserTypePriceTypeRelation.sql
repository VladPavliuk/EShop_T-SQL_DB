CREATE PROCEDURE [dbo].[CreateUserTypePriceTypeRelation]
	 @UserTypeId INT
	,@PriceTypeId INT
AS

BEGIN
	INSERT INTO [dbo].[UserTypePriceTypeRelation]( 
		[UserTypeId], 
		[PriceTypeId]
	) VALUES (
		@UserTypeId,
		@PriceTypeId
	)
END
