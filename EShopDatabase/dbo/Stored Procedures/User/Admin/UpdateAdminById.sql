CREATE PROCEDURE [dbo].[UpdateAdminById]
	 @AdminId INT
	,@FirstName NVARCHAR(50)
	,@LastName NVARCHAR(50)
	,@Email NVARCHAR(50)
	,@Password NVARCHAR(50)
AS

BEGIN
	UPDATE [dbo].[Admin]
	SET
		[FirstName] = @FirstName, 
		[LastName] = @LastName, 
		[Email] = @Email,
		[Password] = @Password
	WHERE [Id] = @AdminId
		AND [DeletedAt] IS NULL
END
