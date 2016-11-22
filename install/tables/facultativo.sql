CREATE TABLE [dbo].[facultativo](
	[facultativoid] [int] IDENTITY(1,1) NOT NULL,
	[carmid] [varchar](50) NOT NULL,
	[nombre] [varchar](max) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[perfil] [int] NOT NULL CONSTRAINT [DF_facultativo_perfil]  DEFAULT ((1)),
	[telefono] [varchar](50) NULL,
	[password] [varchar](50) NOT NULL,
	[img] [varchar](255) NULL,
	[habilitado] [int] NULL,
	[ultimologin] [datetime] NULL,
	[hashrecuperacion] [varchar](50) NULL,
	[validezrecuperacion] [datetime] NULL,
	[numintentos] [int] NULL CONSTRAINT [DF_facultativo_numintentos]  DEFAULT ((0)),
 CONSTRAINT [PK_facultativo] PRIMARY KEY CLUSTERED 
(
	[facultativoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]