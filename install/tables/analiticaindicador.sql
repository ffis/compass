CREATE TABLE [dbo].[analiticaindicador](
	[analiticaindicadorid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[clasificacion] [int] NOT NULL,
	[idexterno] [int] NOT NULL,
	[orden] [int] NOT NULL CONSTRAINT [DF_analiticaindicador_orden]  DEFAULT ((0)),
	[coste] [float] NOT NULL CONSTRAINT [DF_analiticaindicador_coste]  DEFAULT ((0)),
	[tipo] [int] NOT NULL CONSTRAINT [DF_analiticaindicador_tipo]  DEFAULT ((0)),
 CONSTRAINT [PK_analiticaindicador] PRIMARY KEY CLUSTERED 
(
	[analiticaindicadorid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]