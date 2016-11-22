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
