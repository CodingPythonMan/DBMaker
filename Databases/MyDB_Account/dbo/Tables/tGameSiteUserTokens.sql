CREATE TABLE [dbo].[tGameSiteUserTokens](
	[UserId] bigint NOT NULL CONSTRAINT [FK_tGameSiteUserTokens_tGameSiteUsers_UserId] FOREIGN KEY REFERENCES [tGameSiteUsers]([Id]) ON DELETE CASCADE,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450)  NOT NULL,
	[Value] [nvarchar](max) CONSTRAINT [DF_tGameSiteUserTokens_Value] NULL,
    CONSTRAINT [PK_tGameSiteUserTokens] PRIMARY KEY ([UserId], [LoginProvider], [Name])
)
GO

