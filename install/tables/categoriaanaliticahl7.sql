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
