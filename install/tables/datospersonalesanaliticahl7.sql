CREATE TABLE [dbo].[datospersonalesanaliticahl7](
	[datospersonalesanaliticahl7id] [int] IDENTITY(1,1) NOT NULL,
	[nhc] [int] NOT NULL,
	[apellidos] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[cipestatal] [varchar](255) NOT NULL,
	[cipautonomico] [varchar](255) NOT NULL,
	[nss] [varchar](255) NOT NULL,
	[nif] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[datospersonalesanaliticahl7id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
