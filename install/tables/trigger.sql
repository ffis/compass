CREATE TABLE [dbo].[trigger](
	[triggerid] [int] IDENTITY(1,1) NOT NULL,
	[eventtype] [varchar](255) NOT NULL,
	[eventparam] [varchar](255) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[actionparam] [varchar](255) NOT NULL,
	[enabled] [int] NOT NULL CONSTRAINT [DF_trigger_enabled]  DEFAULT ((1)),
 CONSTRAINT [PK_trigger] PRIMARY KEY CLUSTERED 
(
	[triggerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]