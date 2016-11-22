CREATE TABLE [dbo].[datospersonalespaciente](
	[datospersonalespacienteid] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) NOT NULL,
	[direccion] [varchar](max) NOT NULL,
	[tlf] [varchar](50) NOT NULL,
	[tlftb] [varchar](50) NOT NULL,
	[nss] [varchar](50) NOT NULL,
	[fechanacimiento] [datetime] NOT NULL,
	[genero] [char](1) NOT NULL,
	[md5] [varchar](50) NOT NULL,
	[apellidos] [varchar](max) NOT NULL,
	[nif] [varchar](20) NOT NULL,
	[fechaversion] [datetime] NOT NULL,
 CONSTRAINT [PK_datospersonalespaciente] PRIMARY KEY CLUSTERED 
(
	[datospersonalespacienteid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]