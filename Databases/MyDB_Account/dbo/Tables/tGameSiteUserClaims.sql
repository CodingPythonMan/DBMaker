CREATE TABLE [dbo].[tGameSiteUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] bigint NOT NULL CONSTRAINT [FK_tGameSiteUserClaims_tGameSiteUsers_UserId]  FOREIGN KEY REFERENCES [tGameSiteUsers]([Id]) ON DELETE CASCADE,
	[ClaimType] [nvarchar](max)  CONSTRAINT [DF_tGameSiteUserClaims_ClaimType] NULL,
	[ClaimValue] [nvarchar](max)  CONSTRAINT [DF_tGameSiteUserClaims_ClaimValue]  NULL,
    CONSTRAINT [PK_tGameSiteUserClaims] PRIMARY KEY ([Id])
)
GO

CREATE NONCLUSTERED INDEX [IX_tGameSiteUserClaims_UserId] ON [dbo].[tGameSiteUserClaims]
(
	[UserId] ASC
);
