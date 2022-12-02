CREATE TABLE [dbo].[tGameSiteUserRoles](
	[UserId] bigint NOT NULL CONSTRAINT [FK_tGameSiteUserRoles_tGameSiteUsers_UserId] FOREIGN KEY REFERENCES [tGameSiteUsers]([Id]) ON DELETE CASCADE,
	[RoleId] bigint NOT NULL CONSTRAINT [FK_tGameSiteUserRoles_tGameSiteRoles_RoleId] FOREIGN KEY REFERENCES [tGameSiteRoles]([Id]) ON DELETE CASCADE,
    CONSTRAINT [PK_tGameSiteUserRoles] PRIMARY KEY ([UserId], [RoleId])
)
GO

CREATE NONCLUSTERED INDEX [IX_tGameSiteUserRoles_RoleId] ON [dbo].[tGameSiteUserRoles]
(
	[RoleId]
);
