CREATE PROCEDURE [dbo].[CreatePriceType]
	 @Title NVARCHAR(50)
AS

BEGIN
	INSERT INTO [dbo].[PriceType]( 
		[Title]
	) VALUES (
		@Title
	)
END
