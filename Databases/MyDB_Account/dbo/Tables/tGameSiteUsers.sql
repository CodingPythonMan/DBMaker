CREATE TABLE [dbo].[tGameSiteUsers] (
	[Id] bigint IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256)  CONSTRAINT [DF_tGameSiteUsers_UserName] NULL,
	[Email] [nvarchar](256)  CONSTRAINT [DF_tGameSiteUsers_Email] NULL,
	[PasswordHash] [nvarchar](max) CONSTRAINT [DF_tGameSiteUsers_PasswordHash] NOT NULL,
    CONSTRAINT [PK_tGameSiteUsers] PRIMARY KEY ([Id])
)
GO