CREATE TABLE [dbo].[etiquetavisita](
	[etiquetavisitaid] [int] IDENTITY(1,1) NOT NULL,
	[etiqueta] [int] NOT NULL,
	[icu] [int] NOT NULL,
	[nhc] [int] NOT NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_etiquetavisita] PRIMARY KEY CLUSTERED 
(
	[etiquetavisitaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]