CREATE PROCEDURE [dbo].[CreateProductPhoto]
	 @Title NVARCHAR(50) = NULL
	,@Image VARBINARY(MAX)
    ,@ProductId INT 
AS

BEGIN
	INSERT INTO [dbo].[ProductPhoto]( 
		[Title],
		[Image],
		[ProductId]
	) VALUES (
		@Title,
		@Image,
		@ProductId
	)
END
