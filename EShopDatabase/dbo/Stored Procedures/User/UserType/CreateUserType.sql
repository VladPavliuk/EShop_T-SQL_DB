CREATE PROCEDURE [dbo].[CreateUserType]
	 @Title NVARCHAR(50)
AS

BEGIN
	INSERT INTO [dbo].[UserType]( 
		[Title]
	) VALUES (
		@Title
	)
END
