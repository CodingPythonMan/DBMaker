CREATE TABLE [dbo].[tGameSiteUsers] (
	[Id] bigint IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256)  CONSTRAINT [DF_tGameSiteUsers_UserName] NULL,
	[NormalizedUserName] [nvarchar](256)  CONSTRAINT [DF_tGameSiteUsers_NormalizedUserName] NULL,
	[Email] [nvarchar](256)  CONSTRAINT [DF_tGameSiteUsers_Email] NULL,
	[NormalizedEmail] [nvarchar](256)  CONSTRAINT [DF_tGameSiteUsers_NormalizedEmail] NULL,
	[EmailConfirmed] [bit] CONSTRAINT [DF_tGameSiteUsers_EmailConfirmed] NULL,
	[PasswordHash] [nvarchar](max) CONSTRAINT [DF_tGameSiteUsers_PasswordHash] NOT NULL,
	[SecurityStamp] [nvarchar](max) CONSTRAINT [DF_tGameSiteUsers_SecurityStamp] NULL,
	[ConcurrencyStamp] [nvarchar](max) CONSTRAINT [DF_tGameSiteUsers_ConcurrencyStamp] NULL,
	[PhoneNumber] [nvarchar](max) CONSTRAINT [DF_tGameSiteUsers_PhoneNumber] NULL,
	[PhoneNumberConfirmed] [bit] CONSTRAINT [DF_tGameSiteUsers_PhoneNumberConfirmed] NULL,
	[TwoFactorEnabled] [bit] CONSTRAINT [DF_tGameSiteUsers_TwoFactorEnabled] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) CONSTRAINT [DF_tGameSiteUsers_LockoutEnd]  NULL,
	[LockoutEnabled] [bit] CONSTRAINT [DF_tGameSiteUsers_LockoutEnabled] NOT NULL,
	[AccessFailedCount] [int] CONSTRAINT [DF_tGameSiteUsers_AccessFailedCount] NOT NULL,   
    CONSTRAINT [PK_tGameSiteUsers_] PRIMARY KEY ([Id])
)
GO

CREATE NONCLUSTERED INDEX [IX_tGameSiteUsers_NormalizedEmail] ON [dbo].[tGameSiteUsers]
(
	[NormalizedEmail]
);
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tGameSiteUsers_NormalizedUserName] ON [dbo].[tGameSiteUsers]
(
	[NormalizedUserName]
)WHERE ([NormalizedUserName] IS NOT NULL);
GO