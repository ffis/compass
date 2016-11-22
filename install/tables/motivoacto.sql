CREATE TABLE [dbo].[motivoacto](
	[id] [int] NOT NULL,
	[cod_hl7] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[tipo_acto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_motivoacto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
