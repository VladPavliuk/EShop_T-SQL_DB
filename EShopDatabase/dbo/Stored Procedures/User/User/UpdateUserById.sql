CREATE PROCEDURE [dbo].[UpdateUserById]
	 @UserId INT
	,@FirstName NVARCHAR(50)
	,@LastName NVARCHAR(50)
	,@Email NVARCHAR(50)
	,@Password NVARCHAR(50)
AS

BEGIN
	UPDATE [dbo].[User]
	SET
		[FirstName] = @FirstName, 
		[LastName] = @LastName, 
		[Email] = @Email,
		[Password] = @Password
	WHERE [Id] = @UserId
		AND [DeletedAt] IS NULL
END
