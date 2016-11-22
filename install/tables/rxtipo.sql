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