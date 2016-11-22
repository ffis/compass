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