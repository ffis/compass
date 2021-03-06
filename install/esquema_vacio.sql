USE [testdb]
GO
/****** Objeto:  Table [dbo].[facultativo]    Fecha de la secuencia de comandos: 04/27/2016 12:38:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[facultativo]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[mapa]    Fecha de la secuencia de comandos: 04/27/2016 12:39:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mapa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mapa](
	[mapaid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ruta] [varchar](255) NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[width] [int] NOT NULL CONSTRAINT [DF_mapa_width]  DEFAULT ((0)),
	[height] [int] NOT NULL CONSTRAINT [DF_mapa_height]  DEFAULT ((0)),
	[title] [varchar](50) NULL,
 CONSTRAINT [PK_mapa] PRIMARY KEY CLUSTERED 
(
	[mapaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[sprites_location]    Fecha de la secuencia de comandos: 04/27/2016 12:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sprites_location]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sprites_location](
	[sprites_locationid] [int] IDENTITY(1,1) NOT NULL,
	[mapa] [int] NOT NULL,
	[localizacion] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[tipoicono] [varchar](255) NOT NULL,
	[polygon] [varchar](255) NULL,
 CONSTRAINT [PK__sprites_location] PRIMARY KEY CLUSTERED 
(
	[sprites_locationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[servicio]    Fecha de la secuencia de comandos: 04/27/2016 12:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[servicio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[servicio](
	[servicioid] [int] IDENTITY(1,1) NOT NULL,
	[nombrehl7] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[color] [varchar](50) NOT NULL,
	[orden] [int] NOT NULL,
	[nivel] [int] NOT NULL CONSTRAINT [DF_servicio_nivel]  DEFAULT ((0)),
	[ambito] [varchar](50) NULL,
	[nombrelargo] [varchar](255) NULL,
 CONSTRAINT [PK_servicio] PRIMARY KEY CLUSTERED 
(
	[servicioid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[visitapaciente]    Fecha de la secuencia de comandos: 04/27/2016 12:40:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[visitapaciente]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[ficticios]    Fecha de la secuencia de comandos: 04/27/2016 12:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ficticios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ficticios](
	[nombre] [varchar](255) NOT NULL,
 CONSTRAINT [PK_ficticios] PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[categoriaanaliticahl7]    Fecha de la secuencia de comandos: 04/27/2016 12:38:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categoriaanaliticahl7]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[categoriaanaliticahl7](
	[categoriaanaliticahl7id] [int] IDENTITY(1,1) NOT NULL,
	[nombrehl7] [varchar](255) NOT NULL,
	[id] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[padre] [int] NOT NULL,
	[color] [varchar](255) NOT NULL,
	[iniciales] [varchar](50) NULL,
	[orden] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoriaanaliticahl7id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[motivoalta]    Fecha de la secuencia de comandos: 04/27/2016 12:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[motivoalta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[motivoalta](
	[id] [int] NOT NULL,
	[cod_hl7] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[tipo_acto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_motivoalta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[indicadoranaliticahl7]    Fecha de la secuencia de comandos: 04/27/2016 12:39:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[indicadoranaliticahl7]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[indicadoranaliticahl7](
	[indicadoranaliticahl7id] [int] IDENTITY(1,1) NOT NULL,
	[nombrehl7] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[idindicador] [varchar](255) NOT NULL,
	[coste] [float] NOT NULL,
	[categoriahl7] [varchar](255) NOT NULL,
	[orden] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[indicadoranaliticahl7id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[motivoacto]    Fecha de la secuencia de comandos: 04/27/2016 12:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[motivoacto]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[valorcritico]    Fecha de la secuencia de comandos: 04/27/2016 12:40:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[valorcritico]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[datospersonalesanaliticahl7]    Fecha de la secuencia de comandos: 04/27/2016 12:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[datospersonalesanaliticahl7]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[datospersonalesanaliticahl7](
	[datospersonalesanaliticahl7id] [int] IDENTITY(1,1) NOT NULL,
	[nhc] [int] NOT NULL,
	[apellidos] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[cipestatal] [varchar](255) NOT NULL,
	[cipautonomico] [varchar](255) NOT NULL,
	[nss] [varchar](255) NOT NULL,
	[nif] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[datospersonalesanaliticahl7id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[vectorialbody]    Fecha de la secuencia de comandos: 04/27/2016 12:40:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vectorialbody]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vectorialbody](
	[vectorialbodyid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[ruta] [varchar](255) NOT NULL,
	[genero] [varchar](255) NOT NULL,
 CONSTRAINT [PK_vectorialbody] PRIMARY KEY CLUSTERED 
(
	[vectorialbodyid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[resultadoanaliticahl7]    Fecha de la secuencia de comandos: 04/27/2016 12:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resultadoanaliticahl7]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[analiticahl7]    Fecha de la secuencia de comandos: 04/27/2016 12:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analiticahl7]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[analiticahl7](
	[analiticahl7id] [int] IDENTITY(1,1) NOT NULL,
	[idmensaje] [varchar](255) NOT NULL,
	[generador] [varchar](255) NOT NULL,
	[nhc] [int] NOT NULL,
	[datospersonales] [int] NOT NULL,
	[cipestatal] [varchar](255) NOT NULL,
	[fechanacimiento] [datetime] NULL,
	[fechafallecimiento] [datetime] NULL,
	[cp] [varchar](255) NOT NULL,
	[localizacion] [int] NOT NULL,
	[servicio] [varchar](255) NOT NULL,
	[icu] [int] NOT NULL,
	[idvisitaalternativo] [varchar](255) NOT NULL,
	[ordercontrol] [varchar](255) NOT NULL,
	[id1] [int] NOT NULL,
	[id2] [int] NOT NULL,
	[id3] [varchar](255) NOT NULL,
	[placergroup] [varchar](255) NOT NULL,
	[responseflag] [varchar](255) NOT NULL,
	[fecha1] [datetime] NULL,
	[fecharesultado] [datetime] NULL,
	[fechanotificacion] [datetime] NULL,
	[genero] [varchar](50) NULL,
	[solicitante] [varchar](50) NULL,
	[coste] [float] NULL,
 CONSTRAINT [PK__analiticahl7__10C14EDC] PRIMARY KEY CLUSTERED 
(
	[analiticahl7id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[obxval]    Fecha de la secuencia de comandos: 04/27/2016 12:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[obxval]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[obxval](
	[obxvalid] [int] IDENTITY(1,1) NOT NULL,
	[facultativo] [nvarchar](50) NOT NULL,
	[obx] [int] NOT NULL,
	[codigo] [varchar](50) NOT NULL,
	[nhc] [int] NOT NULL,
	[icu] [int] NOT NULL,
	[value] [text] NOT NULL,
	[fechaobservacion] [datetime] NOT NULL,
	[fechanotificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_obxval] PRIMARY KEY CLUSTERED 
(
	[obxvalid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[notificacion]    Fecha de la secuencia de comandos: 04/27/2016 12:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notificacion]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[hito]    Fecha de la secuencia de comandos: 04/27/2016 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hito](
	[hitoid] [bigint] IDENTITY(1,1) NOT NULL,
	[nhc] [bigint] NOT NULL,
	[icu] [bigint] NOT NULL,
	[facultativo] [nvarchar](255) NOT NULL,
	[localizacion] [int] NOT NULL,
	[hora_inicio] [datetime] NOT NULL,
	[hora_fin] [datetime] NOT NULL,
	[duracion] [int] NOT NULL,
	[servicio] [nvarchar](50) NOT NULL,
	[patienttype] [varchar](50) NULL,
 CONSTRAINT [PK_hito] PRIMARY KEY CLUSTERED 
(
	[hitoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[registroactividad]    Fecha de la secuencia de comandos: 04/27/2016 12:39:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[registroactividad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[registroactividad](
	[registroactividadid] [int] IDENTITY(1,1) NOT NULL,
	[usr] [varchar](50) NULL,
	[fecha] [datetime] NULL,
	[url] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[alergia]    Fecha de la secuencia de comandos: 04/27/2016 12:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[alergia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[alergia](
	[alergiaid] [int] IDENTITY(1,1) NOT NULL,
	[nombrehl7] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[codigo] [varchar](255) NOT NULL,
	[categoria] [varchar](255) NOT NULL,
	[color] [varchar](255) NOT NULL,
 CONSTRAINT [PK_alergia] PRIMARY KEY CLUSTERED 
(
	[alergiaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[preingreso]    Fecha de la secuencia de comandos: 04/27/2016 12:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[preingreso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[preingreso](
	[preingresoid] [int] IDENTITY(1,1) NOT NULL,
	[nhc] [bigint] NOT NULL,
	[icu] [bigint] NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[fechapreingreso] [datetime] NOT NULL,
	[fechaingreso] [datetime] NULL,
	[tiempopreingreso] [int] NULL,
 CONSTRAINT [PK_preingreso] PRIMARY KEY CLUSTERED 
(
	[preingresoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[trigger]    Fecha de la secuencia de comandos: 04/27/2016 12:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trigger]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[trigger](
	[triggerid] [int] IDENTITY(1,1) NOT NULL,
	[eventtype] [varchar](255) NOT NULL,
	[eventparam] [varchar](255) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[actionparam] [varchar](255) NOT NULL,
	[enabled] [int] NOT NULL CONSTRAINT [DF_trigger_enabled]  DEFAULT ((1)),
 CONSTRAINT [PK_trigger] PRIMARY KEY CLUSTERED 
(
	[triggerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[cp]    Fecha de la secuencia de comandos: 04/27/2016 12:38:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cp](
	[cpid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NOT NULL,
	[numero] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Objeto:  Table [dbo].[etiqueta]    Fecha de la secuencia de comandos: 04/27/2016 12:38:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[etiqueta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[etiqueta](
	[etiquetaid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[icono] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_etiqueta] PRIMARY KEY CLUSTERED 
(
	[etiquetaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Objeto:  Table [dbo].[etiquetavisita]    Fecha de la secuencia de comandos: 04/27/2016 12:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[etiquetavisita]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[etiquetavisita](
	[etiquetavisitaid] [int] IDENTITY(1,1) NOT NULL,
	[etiqueta] [int] NOT NULL,
	[icu] [int] NOT NULL,
	[nhc] [int] NOT NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_etiquetavisita] PRIMARY KEY CLUSTERED 
(
	[etiquetavisitaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Objeto:  Table [dbo].[datospersonalespaciente]    Fecha de la secuencia de comandos: 04/27/2016 12:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[datospersonalespaciente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[datospersonalespaciente](
	[datospersonalespacienteid] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) NOT NULL,
	[direccion] [varchar](max) NOT NULL,
	[tlf] [varchar](50) NOT NULL,
	[tlftb] [varchar](50) NOT NULL,
	[nss] [varchar](50) NOT NULL,
	[fechanacimiento] [datetime] NOT NULL,
	[genero] [char](1) NOT NULL,
	[md5] [varchar](50) NOT NULL,
	[apellidos] [varchar](max) NOT NULL,
	[nif] [varchar](20) NOT NULL,
	[fechaversion] [datetime] NOT NULL,
 CONSTRAINT [PK_datospersonalespaciente] PRIMARY KEY CLUSTERED 
(
	[datospersonalespacienteid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[obx]    Fecha de la secuencia de comandos: 04/27/2016 12:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[obx]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[obx](
	[obxid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[nombrehl7] [nvarchar](50) NOT NULL,
	[categoria] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[grupo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_obx] PRIMARY KEY CLUSTERED 
(
	[obxid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Objeto:  Table [dbo].[paciente]    Fecha de la secuencia de comandos: 04/27/2016 12:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paciente]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[facultativocarm]    Fecha de la secuencia de comandos: 04/27/2016 12:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[facultativocarm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[facultativocarm](
	[facultativocarmid] [int] IDENTITY(1,1) NOT NULL,
	[nombrehl7] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[iniciales] [varchar](10) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[rx]    Fecha de la secuencia de comandos: 04/27/2016 12:40:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rx]') AND type in (N'U'))
BEGIN
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
	[valor] [varchar](255) NOT NULL,
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[rxtipo]    Fecha de la secuencia de comandos: 04/27/2016 12:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rxtipo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rxtipo](
	[rxtipoid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](254) NOT NULL,
	[nombrehl7] [varchar](254) NOT NULL,
	[categoria] [varchar](50) NOT NULL,
	[color] [varchar](50) NOT NULL,
	[grupo] [varchar](50) NOT NULL,
	[coste] [float] NULL,
	[codigo] [int] NULL,
 CONSTRAINT [PK_rxtipo] PRIMARY KEY CLUSTERED 
(
	[rxtipoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[tipoprueba]    Fecha de la secuencia de comandos: 04/27/2016 12:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoprueba]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tipoprueba](
	[tipopruebaid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[nombrehl7] [varchar](255) NOT NULL,
	[categoria] [varchar](50) NOT NULL,
	[color] [varchar](50) NOT NULL,
	[grupo] [varchar](50) NOT NULL,
	[coste] [float] NOT NULL,
	[codigo] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tipoprueba] PRIMARY KEY CLUSTERED 
(
	[tipopruebaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[indicadorclasificacion]    Fecha de la secuencia de comandos: 04/27/2016 12:39:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[indicadorclasificacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[indicadorclasificacion](
	[indicadorclasificacionid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[nombrecorto] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL CONSTRAINT [DF_indicadorclasificacion_color]  DEFAULT ('#ccc'),
	[orden] [int] NOT NULL CONSTRAINT [DF_indicadorclasificacion_orden]  DEFAULT ((0)),
	[iniciales] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_indicadorclasificacion] PRIMARY KEY CLUSTERED 
(
	[indicadorclasificacionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Objeto:  Table [dbo].[suscripcion]    Fecha de la secuencia de comandos: 04/27/2016 12:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[suscripcion]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Objeto:  Table [dbo].[resultadosmicro]    Fecha de la secuencia de comandos: 04/27/2016 12:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resultadosmicro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[resultadosmicro](
	[resultadosmicroid] [int] IDENTITY(1,1) NOT NULL,
	[idmensaje] [varchar](20) NOT NULL,
	[nhc] [int] NOT NULL,
	[cipautonomico] [varchar](50) NOT NULL,
	[nif] [varchar](50) NOT NULL,
	[nss] [varchar](50) NOT NULL,
	[genero] [char](1) NOT NULL,
	[fechanacimiento] [datetime] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellidos] [varchar](255) NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[idvisita] [varchar](50) NOT NULL,
	[ordencontrol] [varchar](50) NOT NULL,
	[numeropeticion1] [varchar](20) NOT NULL,
	[numeropeticion2] [varchar](20) NOT NULL,
	[numeropeticion3] [varchar](20) NOT NULL,
	[fechatransaccion] [datetime] NULL,
	[fechaobservacion] [datetime] NULL,
	[fechaobservacion2] [datetime] NULL,
	[fechaspecimen] [datetime] NULL,
	[fecharesultados] [datetime] NULL,
	[tipoprueba] [int] NOT NULL,
	[valor] [varchar](max) NOT NULL,
	[serviciodiagnostico] [varchar](50) NOT NULL,
	[alerta] [char](1) NOT NULL,
	[tipovalor] [char](10) NOT NULL,
	[subtipovalor] [varchar](50) NOT NULL,
	[dnitecnicolaboratorio] [varchar](9) NOT NULL,
	[status] [char](1) NOT NULL,
	[dangercode] [char](1) NOT NULL,
	[fechanotificacion] [datetime] NULL,
 CONSTRAINT [PK_resultadosmicro] PRIMARY KEY CLUSTERED 
(
	[resultadosmicroid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[analiticaresultado]    Fecha de la secuencia de comandos: 04/27/2016 12:38:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analiticaresultado]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Objeto:  Table [dbo].[localizacion]    Fecha de la secuencia de comandos: 04/27/2016 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[localizacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[localizacion](
	[localizacionid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[nombrecorto] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[sala] [varchar](50) NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[edificio] [varchar](50) NOT NULL,
	[grupo] [varchar](50) NULL CONSTRAINT [DF_localizacion_grupo]  DEFAULT (''),
	[capacidad] [int] NOT NULL CONSTRAINT [DF_localizacion_capacidad]  DEFAULT ((1)),
	[color] [varchar](50) NULL,
	[grupo2] [varchar](50) NULL,
 CONSTRAINT [PK_localizacion] PRIMARY KEY CLUSTERED 
(
	[localizacionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[message]    Fecha de la secuencia de comandos: 04/27/2016 12:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[message]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[message](
	[messageid] [int] IDENTITY(1,1) NOT NULL,
	[ip] [varchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
	[message] [varchar](max) NOT NULL,
	[channel] [varchar](50) NOT NULL,
	[json] [varchar](max) NOT NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[messageid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[device]    Fecha de la secuencia de comandos: 04/27/2016 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[device]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[device](
	[deviceid] [int] IDENTITY(1,1) NOT NULL,
	[facultativo] [varchar](50) NOT NULL,
	[gcmcode] [text] NOT NULL,
 CONSTRAINT [PK_device] PRIMARY KEY CLUSTERED 
(
	[deviceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Objeto:  Table [dbo].[analiticaindicador]    Fecha de la secuencia de comandos: 04/27/2016 12:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analiticaindicador]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[analiticaindicador](
	[analiticaindicadorid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[clasificacion] [int] NOT NULL,
	[idexterno] [int] NOT NULL,
	[orden] [int] NOT NULL CONSTRAINT [DF_analiticaindicador_orden]  DEFAULT ((0)),
	[coste] [float] NOT NULL CONSTRAINT [DF_analiticaindicador_coste]  DEFAULT ((0)),
	[tipo] [int] NOT NULL CONSTRAINT [DF_analiticaindicador_tipo]  DEFAULT ((0)),
 CONSTRAINT [PK_analiticaindicador] PRIMARY KEY CLUSTERED 
(
	[analiticaindicadorid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Objeto:  ForeignKey [FK_analiticaindicador_indicadorclasificacion]    Fecha de la secuencia de comandos: 04/27/2016 12:38:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_analiticaindicador_indicadorclasificacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[analiticaindicador]'))
ALTER TABLE [dbo].[analiticaindicador]  WITH CHECK ADD  CONSTRAINT [FK_analiticaindicador_indicadorclasificacion] FOREIGN KEY([clasificacion])
REFERENCES [dbo].[indicadorclasificacion] ([indicadorclasificacionid])
GO
ALTER TABLE [dbo].[analiticaindicador] CHECK CONSTRAINT [FK_analiticaindicador_indicadorclasificacion]
GO
/****** Objeto:  ForeignKey [FK_visitapaciente_visitapaciente]    Fecha de la secuencia de comandos: 04/27/2016 12:40:48 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_visitapaciente_visitapaciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitapaciente]'))
ALTER TABLE [dbo].[visitapaciente]  WITH CHECK ADD  CONSTRAINT [FK_visitapaciente_visitapaciente] FOREIGN KEY([visitapacienteid])
REFERENCES [dbo].[visitapaciente] ([visitapacienteid])
GO
ALTER TABLE [dbo].[visitapaciente] CHECK CONSTRAINT [FK_visitapaciente_visitapaciente]
GO
