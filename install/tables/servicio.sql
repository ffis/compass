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
