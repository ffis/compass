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