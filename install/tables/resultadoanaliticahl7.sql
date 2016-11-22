CREATE TABLE [dbo].[resultadoanaliticahl7](
	[resultadoanaliticahl7id] [int] IDENTITY(1,1) NOT NULL,
	[contador] [int] NOT NULL,
	[solicitud] [int] NOT NULL,
	[diafinmuestra] [datetime] NULL,
	[diamuestra] [datetime] NULL,
	[solicitante] [varchar](255) NOT NULL,
	[fecharesultado] [datetime] NULL,
	[fechanotificacion] [datetime] NULL,
	[indicadorhl7] [int] NOT NULL,
	[tipovalor] [varchar](255) NOT NULL,
	[valortexto] [varchar](255) NOT NULL,
	[valornumerico] [float] NOT NULL,
	[alerta] [varchar](255) NOT NULL,
	[limiteinf] [varchar](255) NOT NULL,
	[limitesup] [varchar](255) NOT NULL,
	[unidad] [varchar](255) NOT NULL,
	[estadoresultado] [varchar](255) NOT NULL,
	[comentario] [text] NOT NULL,
	[sourcecomentario] [varchar](255) NOT NULL,
	[analiticahl7] [int] NOT NULL,
 CONSTRAINT [PK__resultadoanaliti__167A2832] PRIMARY KEY CLUSTERED 
(
	[resultadoanaliticahl7id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
