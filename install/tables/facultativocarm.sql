CREATE TABLE [dbo].[facultativocarm](
	[facultativocarmid] [int] IDENTITY(1,1) NOT NULL,
	[nombrehl7] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[iniciales] [varchar](20) NOT NULL
) ON [PRIMARY]