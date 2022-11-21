ALTER PROC [dbo].[SecretSantaWishLists_Delete]
		@Id int

/*

	DECLARE @Id int = 1;

	SELECT * 
	FROM [dbo].[SecretSantaWishLists]
	WHERE Id = @Id

	EXECUTE [dbo].[SecretSantaWishLists_Delete] @Id

	SELECT * 
	FROM [dbo].[SecretSantaWishLists]

*/

AS

BEGIN

	DELETE FROM [dbo].[SecretSantaWishLists]
      WHERE Id = @Id

END