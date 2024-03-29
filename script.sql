USE [tp2]
GO
/****** Object:  Table [dbo].[rubros]    Script Date: 13/05/2019 18:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rubros](
	[Cod_rubro] [int] NOT NULL,
	[Desc_rubro] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rubros_1] PRIMARY KEY CLUSTERED 
(
	[Cod_rubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[servicios]    Script Date: 13/05/2019 18:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[servicios](
	[Cod_servicio] [int] IDENTITY(1,1) NOT NULL,
	[Desc_servicio] [varchar](50) NOT NULL,
	[Tipo_servicio] [int] NOT NULL,
	[Rubro] [int] NOT NULL,
 CONSTRAINT [PK_servicio] PRIMARY KEY CLUSTERED 
(
	[Cod_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_servicio]    Script Date: 13/05/2019 18:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_servicio](
	[Cod_serv] [int] NOT NULL,
	[Desc_serv] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo servicio] PRIMARY KEY CLUSTERED 
(
	[Cod_serv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[rubros] ([Cod_rubro], [Desc_rubro]) VALUES (1, N'Informatica')
INSERT [dbo].[rubros] ([Cod_rubro], [Desc_rubro]) VALUES (2, N'Redes')
INSERT [dbo].[rubros] ([Cod_rubro], [Desc_rubro]) VALUES (3, N'Electronica')
SET IDENTITY_INSERT [dbo].[servicios] ON 

INSERT [dbo].[servicios] ([Cod_servicio], [Desc_servicio], [Tipo_servicio], [Rubro]) VALUES (1, N'Se instala en la casa del cliente', 2, 2)
INSERT [dbo].[servicios] ([Cod_servicio], [Desc_servicio], [Tipo_servicio], [Rubro]) VALUES (2, N'Instala el sistema operativo GNU Linux', 3, 1)
SET IDENTITY_INSERT [dbo].[servicios] OFF
INSERT [dbo].[tipo_servicio] ([Cod_serv], [Desc_serv]) VALUES (1, N'Reparacion de PC')
INSERT [dbo].[tipo_servicio] ([Cod_serv], [Desc_serv]) VALUES (2, N'Instalacion de internet')
INSERT [dbo].[tipo_servicio] ([Cod_serv], [Desc_serv]) VALUES (3, N'Instalacion de linux')
INSERT [dbo].[tipo_servicio] ([Cod_serv], [Desc_serv]) VALUES (4, N'Reparacion de disco rigido')
