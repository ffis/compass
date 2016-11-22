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