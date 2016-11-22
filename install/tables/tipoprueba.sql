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