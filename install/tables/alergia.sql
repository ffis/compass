CREATE TABLE [dbo].[alergia](
	[alergiaid] [int] IDENTITY(1,1) NOT NULL,
	[nombrehl7] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[codigo] [varchar](255) NOT NULL,
	[categoria] [varchar](255) NOT NULL,
	[color] [varchar](255) NOT NULL,
 CONSTRAINT [PK_alergia] PRIMARY KEY CLUSTERED 
(
	[alergiaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]