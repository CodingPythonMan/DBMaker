CREATE TABLE [dbo].[tGameSiteRoleClaims](
	[Id] [int] IDENTITY NOT NULL,
	[RoleId] bigint NOT NULL CONSTRAINT [FK_tGameSiteRoleClaims_tGameSiteRoles_RoleId] FOREIGN KEY REFERENCES [tGameSiteRoles]([Id]) ON DELETE CASCADE,
	[ClaimType] [nvarchar](max)  CONSTRAINT [DF_tGameSiteRoleClaims_ClaimType] NULL,
	[ClaimValue] [nvarchar](max)  CONSTRAINT [DF_tGameSiteRoleClaims_ClaimValue] NULL,
 CONSTRAINT [PK_tGameSiteRoleClaims] PRIMARY KEY ([Id])  
)
GO

CREATE NONCLUSTERED INDEX [IX_tGameSiteRoleClaims_RoleId] ON [dbo].[tGameSiteRoleClaims]
(
	[RoleId] ASC
);

