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
