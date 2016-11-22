CREATE TABLE [dbo].[rx](
	[rxid] [int] IDENTITY(1,1) NOT NULL,
	[numsolicitud] [char](20) NOT NULL,
	[usid] [char](20) NOT NULL,
	[codigoaccion] [char](1) NOT NULL,
	[facultativoproveedor] [int] NOT NULL,
	[campo1] [char](50) NOT NULL,
	[campo2] [char](10) NOT NULL,
	[serviciodiagnostico] [char](10) NOT NULL,
	[servicioorigen] [char](10) NOT NULL,
	[tipovalor] [char](10) NOT NULL,
	[tipoobservacion] [int] NOT NULL,
	[subtipovalor] [char](10) NOT NULL,
	[valor] [varchar](MAX) NOT NULL,
	[bandera] [char](1) NOT NULL,
	[fechaobservacion] [datetime] NOT NULL,
	[facultativoradiologo] [int] NOT NULL,
	[fechainicio] [datetime] NULL,
	[fechafin] [datetime] NULL,
	[nhc] [int] NOT NULL,
	[cip] [varchar](50) NOT NULL,
	[idvisitaalternativo] [varchar](50) NOT NULL,
	[icu] [int] NOT NULL,
	[genero] [char](1) NULL,
	[fechanotificacion] [datetime] NULL,
 CONSTRAINT [PK_rx] PRIMARY KEY CLUSTERED 
(
	[rxid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
;
CREATE NONCLUSTERED INDEX RXnumsolicitud ON RX(numsolicitud)
;