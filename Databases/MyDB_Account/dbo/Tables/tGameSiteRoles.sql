CREATE TABLE [dbo].[tGameSiteRoles] (
	[Id] bigint IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256)   CONSTRAINT [DF_tGameSiteRoles_Name] NULL,
	[NormalizedName] [nvarchar](256) CONSTRAINT [DF_tGameSiteRoles_NormalizedName] NULL,
	[ConcurrencyStamp] [nvarchar](max) CONSTRAINT [DF_tGameSiteRoles_ConcurrencyStamp] NULL,
	CONSTRAINT [PK_tGameSiteRoles] PRIMARY KEY ([Id])
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_tGameSiteRoles_NormalizedName] ON [dbo].[tGameSiteRoles]
(
	[NormalizedName] ASC
)WHERE ([NormalizedName] IS NOT NULL);