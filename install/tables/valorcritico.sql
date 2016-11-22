CREATE TABLE [dbo].[valorcritico](
	[valorcriticoid] [int] IDENTITY(1,1) NOT NULL,
	[indicador] [int] NOT NULL,
	[umbral] [float] NOT NULL,
	[direccion] [int] NOT NULL,
	[comentario] [varchar](255) NOT NULL,
 CONSTRAINT [PK_valorcritico] PRIMARY KEY CLUSTERED 
(
	[valorcriticoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
