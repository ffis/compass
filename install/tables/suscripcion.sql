CREATE TABLE [dbo].[suscripcion](
	[suscripcionid] [bigint] IDENTITY(1,1) NOT NULL,
	[nhc] [int] NOT NULL,
	[facultativo] [int] NOT NULL,
	[fechainicio] [datetime] NULL,
	[fechafin] [datetime] NULL,
	[fecharevision] [datetime] NULL,
 CONSTRAINT [PK_suscripcion] PRIMARY KEY CLUSTERED 
(
	[suscripcionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]