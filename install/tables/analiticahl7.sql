CREATE TABLE [dbo].[analiticahl7](
	[analiticahl7id] [int] IDENTITY(1,1) NOT NULL,
	[idmensaje] [varchar](255) NOT NULL,
	[generador] [varchar](255) NOT NULL,
	[nhc] [int] NOT NULL,
	[datospersonales] [int] NOT NULL,
	[cipestatal] [varchar](255) NOT NULL,
	[fechanacimiento] [datetime] NULL,
	[fechafallecimiento] [datetime] NULL,
	[cp] [varchar](255) NOT NULL,
	[localizacion] [int] NOT NULL,
	[servicio] [varchar](255) NOT NULL,
	[icu] [int] NOT NULL,
	[idvisitaalternativo] [varchar](255) NOT NULL,
	[ordercontrol] [varchar](255) NOT NULL,
	[id1] [int] NOT NULL,
	[id2] [int] NOT NULL,
	[id3] [varchar](255) NOT NULL,
	[placergroup] [varchar](255) NOT NULL,
	[responseflag] [varchar](255) NOT NULL,
	[fecha1] [datetime] NULL,
	[fecharesultado] [datetime] NULL,
	[fechanotificacion] [datetime] NULL,
	[genero] [varchar](50) NULL,
	[solicitante] [varchar](50) NULL,
	[coste] [float] NULL,
 CONSTRAINT [PK__analiticahl7__10C14EDC] PRIMARY KEY CLUSTERED 
(
	[analiticahl7id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
