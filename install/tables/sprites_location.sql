CREATE TABLE [dbo].[sprites_location](
	[sprites_locationid] [int] IDENTITY(1,1) NOT NULL,
	[mapa] [int] NOT NULL,
	[localizacion] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[tipoicono] [varchar](255) NOT NULL,
	[polygon] [varchar](255) NULL,
 CONSTRAINT [PK__sprites_location] PRIMARY KEY CLUSTERED 
(
	[sprites_locationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]