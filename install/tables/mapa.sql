CREATE TABLE [dbo].[mapa](
	[mapaid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ruta] [varchar](255) NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[width] [int] NOT NULL CONSTRAINT [DF_mapa_width]  DEFAULT ((0)),
	[height] [int] NOT NULL CONSTRAINT [DF_mapa_height]  DEFAULT ((0)),
	[title] [varchar](50) NULL,
 CONSTRAINT [PK_mapa] PRIMARY KEY CLUSTERED 
(
	[mapaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]