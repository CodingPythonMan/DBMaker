CREATE TABLE [dbo].[tGameSiteRoles] (
	[Id] bigint IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256)   CONSTRAINT [DF_tGameSiteRoles_Name] NULL,
    CONSTRAINT [PK_tGameSiteRoles] PRIMARY KEY ([Id])
)
GO