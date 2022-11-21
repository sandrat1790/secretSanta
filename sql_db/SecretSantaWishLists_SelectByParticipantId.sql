ALTER PROC [dbo].[SecretSantaWishLists_SelectByParticipantId]
		@ParticipantId int

/*

	DECLARE @ParticipantId int = 1;

	EXECUTE [dbo].[SecretSantaWishLists_SelectByParticipantId]  @ParticipantId


*/

AS 

BEGIN

	SELECT [ParticipantId]
		  ,wl.[Id] as ItemId
		  ,[ItemDescription]
		  ,[ItemUrl]
	FROM [dbo].[SecretSantaWishLists] as wl
			inner join dbo.SecretSantaParticipants as p
				on wl.ParticipantId = p.Id

	WHERE [ParticipantId] = @ParticipantId

END