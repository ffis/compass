CREATE TABLE [dbo].[message](
	[messageid] [int] IDENTITY(1,1) NOT NULL,
	[ip] [varchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
	[message] [varchar](max) NOT NULL,
	[channel] [varchar](50) NOT NULL,
	[json] [varchar](max) NOT NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[messageid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]