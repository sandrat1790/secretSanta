ALTER PROC [dbo].[SecretSantaWishLists_SelectAll]

/*

	EXECUTE [dbo].[SecretSantaWishLists_SelectAll]

*/

AS

BEGIN

	SELECT wl.[Id] as ItemId
		  ,[ParticipantId]
		  ,p.[Name] as ParticipantName
		  ,[ItemDescription]
		  ,[ItemUrl]
	FROM [dbo].[SecretSantaWishLists] as wl
			inner join dbo.SecretSantaParticipants as p
				on wl.ParticipantId = p.Id
			

END