CREATE PROCEDURE [dbo].[UpdatePriceTypeId]
	 @PriceTypeId INT
	,@Title NVARCHAR(50)
AS

BEGIN
	UPDATE [dbo].[PriceType]
	SET
		[Title] = @Title
	WHERE [Id] = @PriceTypeId
		AND [DeletedAt] IS NULL
END
