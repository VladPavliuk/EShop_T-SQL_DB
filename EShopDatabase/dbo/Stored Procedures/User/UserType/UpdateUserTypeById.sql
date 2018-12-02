CREATE PROCEDURE [dbo].[UpdateUserTypeById]
	 @UserTypeId INT
	,@Title NVARCHAR(50)
AS

BEGIN
	UPDATE [dbo].[UserType]
	SET
		[Title] = @Title
	WHERE [Id] = @UserTypeId
		AND [DeletedAt] IS NULL
END
