CREATE TABLE [dbo].[notificacion](
	[notificacionid] [int] IDENTITY(1,1) NOT NULL,
	[nhc] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[facultativo] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[alerta] [int] NOT NULL,
	[id_referencia] [int] NOT NULL,
	[enlace] [varchar](255) NOT NULL,
	[contenido] [text] NOT NULL,
 CONSTRAINT [PK_notificacion] PRIMARY KEY CLUSTERED 
(
	[notificacionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]