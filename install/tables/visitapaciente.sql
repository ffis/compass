CREATE TABLE [dbo].[visitapaciente](
	[visitapacienteid] [bigint] IDENTITY(1,1) NOT NULL,
	[nhc] [bigint] NOT NULL,
	[icu] [int] NOT NULL,
	[clase] [nvarchar](10) NOT NULL,
	[localizacion] [int] NOT NULL,
	[facultativoasignado] [nvarchar](50) NOT NULL,
	[facultativofamilia] [nvarchar](50) NOT NULL,
	[servicio] [nchar](10) NOT NULL,
	[localizaciontemporal] [int] NOT NULL,
	[origenadmision] [nvarchar](50) NOT NULL,
	[estado] [int] NOT NULL,
	[financialclass] [nvarchar](50) NOT NULL,
	[indicadorcoste] [nchar](10) NOT NULL,
	[sintomas] [nvarchar](max) NOT NULL,
	[localizacionpendiente] [int] NOT NULL,
	[fechaadmision] [datetime] NULL,
	[fechaalta] [datetime] NULL,
	[idvisitaalternativo] [nvarchar](50) NOT NULL,
	[transferidoa] [nvarchar](50) NOT NULL,
	[transferidodoc] [nvarchar](50) NOT NULL,
	[razonadmision] [nvarchar](max) NOT NULL,
	[razontransferencia] [nvarchar](max) NOT NULL,
	[duracionestimadaestancia] [int] NOT NULL,
	[duracionrealestancia] [int] NOT NULL,
	[descripcionvisita] [nvarchar](max) NOT NULL,
	[codigoestado] [varchar](20) NOT NULL,
	[alergia] [nvarchar](255) NOT NULL,
	[fechaversion] [datetime] NOT NULL,
	[patienttype] [varchar](50) NULL,
	[idproceso] [nvarchar](50) NULL,
	[limbo] [int] NULL CONSTRAINT [DF_visitapaciente_limbo]  DEFAULT ((0)),
 CONSTRAINT [PK_visitapaciente] PRIMARY KEY CLUSTERED 
(
	[visitapacienteid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]