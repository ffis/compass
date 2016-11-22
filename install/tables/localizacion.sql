CREATE TABLE [dbo].[localizacion](
	[localizacionid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[nombrecorto] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[sala] [varchar](50) NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[edificio] [varchar](50) NOT NULL,
	[grupo] [varchar](50) NULL CONSTRAINT [DF_localizacion_grupo]  DEFAULT (''),
	[capacidad] [int] NOT NULL CONSTRAINT [DF_localizacion_capacidad]  DEFAULT ((1)),
	[color] [varchar](50) NULL,
	[grupo2] [varchar](50) NULL,
 CONSTRAINT [PK_localizacion] PRIMARY KEY CLUSTERED 
(
	[localizacionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]