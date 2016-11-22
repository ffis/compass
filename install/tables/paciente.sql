CREATE TABLE [dbo].[paciente](
	[pacienteid] [bigint] IDENTITY(1,1) NOT NULL,
	[nhc] [bigint] NOT NULL,
	[idexterno] [varchar](50) NOT NULL,
	[fechanacimiento] [datetime] NOT NULL,
	[genero] [char](1) NOT NULL,
	[estadocivil] [char](1) NOT NULL,
	[religion] [nchar](10) NOT NULL,
	[lugarnacimiento] [nchar](10) NOT NULL,
	[citizenship] [nchar](10) NOT NULL,
	[mstatus] [nchar](10) NOT NULL,
	[nacionalidad] [nchar](10) NOT NULL,
	[fechafallecimiento] [datetime] NULL CONSTRAINT [DF_paciente_fechafallecimiento]  DEFAULT (NULL),
	[md5datospersonalespaciente] [varchar](50) NOT NULL,
	[datospersonales] [bigint] NOT NULL,
	[fechaversion] [datetime] NOT NULL,
	[prestacion] [varchar](50) NOT NULL,
	[cp] [varchar](50) NOT NULL CONSTRAINT [DF_paciente_cp]  DEFAULT (''),
	[esultimaversion] [int] NOT NULL CONSTRAINT [DF_paciente_esultimaversion]  DEFAULT ((0)),
	[cip] [varchar](50) NULL,
 CONSTRAINT [PK_paciente] PRIMARY KEY CLUSTERED 
(
	[pacienteid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
