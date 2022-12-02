CREATE TABLE [dbo].[tGameSiteUserLogins] (
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max)  CONSTRAINT [DF_tGameSiteUserLogins_ProviderDisplayName] NULL,
	[UserId] bigint NOT NULL  CONSTRAINT [FK_tGameSiteUserLogins_tGameSiteUsers_UserId] FOREIGN KEY REFERENCES [tGameSiteUsers]([Id]) ON DELETE CASCADE,
    CONSTRAINT [PK_tGameSiteUserLogins] PRIMARY KEY ([LoginProvider], [ProviderKey])
)
GO

CREATE NONCLUSTERED INDEX [IX_tGameSiteUserLogins_UserId] ON [dbo].[tGameSiteUserLogins]
(
	[UserId] ASC
);
