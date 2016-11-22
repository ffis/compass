CREATE TABLE [dbo].[analiticaresultado](
	[analiticaresultadoid] [bigint] IDENTITY(1,1) NOT NULL,
	[analitica] [bigint] NOT NULL,
	[indicador] [int] NOT NULL,
	[valor] [nvarchar](50) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[alerta] [nchar](10) NOT NULL,
	[responsable] [nvarchar](50) NOT NULL,
	[limiteinferior] [nvarchar](50) NOT NULL,
	[limitesuperior] [nvarchar](50) NOT NULL,
	[unidad] [nvarchar](50) NOT NULL,
	[comentario] [text] NOT NULL,
 CONSTRAINT [PK_analiticaresultado] PRIMARY KEY CLUSTERED 
(
	[analiticaresultadoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]