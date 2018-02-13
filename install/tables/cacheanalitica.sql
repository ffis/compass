CREATE TABLE [dbo].[cacheanalitica](
	[cacheanaliticaid] [int] IDENTITY(1,1) NOT NULL,
	[nhc] [int] NOT NULL,
	[fechaversion] [datetime] NOT NULL,
	[json] [text] NOT NULL,
 CONSTRAINT [PK_cacheanalitica] PRIMARY KEY CLUSTERED 
(
	[cacheanaliticaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
