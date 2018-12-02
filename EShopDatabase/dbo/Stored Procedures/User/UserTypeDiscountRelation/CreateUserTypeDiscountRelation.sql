CREATE PROCEDURE [dbo].[CreateUserTypeDiscountRelation]
	 @UserTypeId INT
	,@DiscountId INT
AS

BEGIN
	INSERT INTO [dbo].[UserTypeDiscountRelation]( 
		[UserTypeId], 
		[DiscountId]
	) VALUES (
		@UserTypeId,
		@DiscountId
	)
END
