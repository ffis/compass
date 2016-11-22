CREATE TABLE [dbo].[registroactividad](
	[registroactividadid] [int] IDENTITY(1,1) NOT NULL,
	[usr] [varchar](50) NULL,
	[fecha] [datetime] NULL,
	[url] [varchar](255) NULL
) ON [PRIMARY]