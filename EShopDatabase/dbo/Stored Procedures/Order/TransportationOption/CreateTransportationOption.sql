CREATE PROCEDURE [dbo].[CreateTransportationOption]
	 @Title NVARCHAR(50)
AS

BEGIN
	INSERT INTO [dbo].[TransportationOption]( 
		[Title]
	) VALUES (
		@Title
	)
END
