CREATE PROCEDURE [dbo].[CreateAdmin]
	  @FirstName NVARCHAR(50)
	 ,@LastName NVARCHAR(50)
	 ,@Email NVARCHAR(50)
	 ,@Password NVARCHAR(50)
AS

BEGIN
	INSERT INTO [dbo].[Admin]( 
		[FirstName], 
		[LastName], 
		[Email],
		[Password]
	) VALUES (
		@FirstName,
		@LastName,
		@Email,
		@Password
	)
END
