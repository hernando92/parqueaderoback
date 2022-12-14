USE [Parqueadero]
GO
/****** Object:  Table [dbo].[RegistroVehiculo]    Script Date: 12/12/2022 11:43:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroVehiculo](
	[RegistroVehiculoId] [int] IDENTITY(1,1) NOT NULL,
	[RegistroVehiculoHoraIngreso] [datetime] NOT NULL,
	[RegistroVehiculoHoraSalida] [datetime] NULL,
	[RegistroVehiculoAplicaDescuento] [bit] NULL,
	[RegistroVehiculoValorDescuento] [float] NULL,
	[RegistroVehiculoFacturaRelacionada] [varchar](50) NULL,
	[RegistroVehiculoValorTotal] [float] NULL,
	[VehiculoId] [int] NOT NULL,
 CONSTRAINT [PK_RegistroVehiculo] PRIMARY KEY CLUSTERED 
(
	[RegistroVehiculoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifa]    Script Date: 12/12/2022 11:43:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifa](
	[TarifaId] [int] IDENTITY(1,1) NOT NULL,
	[TarifaValor] [decimal](18, 0) NOT NULL,
	[TipoVehiculoId] [int] NOT NULL,
 CONSTRAINT [PK_Tarifa] PRIMARY KEY CLUSTERED 
(
	[TarifaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoVehiculo]    Script Date: 12/12/2022 11:43:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoVehiculo](
	[TipoVehiculoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoVehiculoDescripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoVehiculo] PRIMARY KEY CLUSTERED 
(
	[TipoVehiculoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 12/12/2022 11:43:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculo](
	[VehiculoId] [int] IDENTITY(1,1) NOT NULL,
	[VehiculoPlaca] [varchar](10) NOT NULL,
	[TipoVehiculoId] [int] NOT NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[VehiculoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RegistroVehiculo] ON 

INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (1, CAST(N'2022-12-10T22:41:58.873' AS DateTime), CAST(N'2022-12-10T22:43:48.733' AS DateTime), 1, 27.47, N'FAC1', 64.09, 1)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (2, CAST(N'2022-12-10T22:42:27.880' AS DateTime), CAST(N'2022-12-10T22:49:30.183' AS DateTime), 1, 232.26732088999998, N'FAC2', 541.95708207666667, 2)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (3, CAST(N'2022-12-10T22:54:57.903' AS DateTime), CAST(N'2022-12-10T22:55:59.297' AS DateTime), 0, 0, NULL, 51.161372833333331, 1)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (4, CAST(N'2022-12-11T21:52:15.973' AS DateTime), CAST(N'2022-12-12T00:55:52.727' AS DateTime), 0, 0, NULL, 9180.62823175, 1)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (5, CAST(N'2022-12-11T22:06:26.507' AS DateTime), CAST(N'2022-12-12T00:52:30.997' AS DateTime), 0, 0, NULL, 8303.7402348333326, 3)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (6, CAST(N'2022-12-11T22:24:55.470' AS DateTime), CAST(N'2022-12-12T00:44:31.877' AS DateTime), 1, 2094.101847775, N'fact01', 4886.2376448083323, 4)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (7, CAST(N'2022-12-11T22:49:22.027' AS DateTime), CAST(N'2022-12-12T00:58:16.657' AS DateTime), 1, 1933.6576065, N'FAC10', 4511.8677485, 5)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (8, CAST(N'2022-12-11T23:06:16.720' AS DateTime), CAST(N'2022-12-12T00:59:02.770' AS DateTime), 1, 1691.5125681250001, N'FAC11', 3946.8626589583337, 7)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (9, CAST(N'2022-12-11T23:06:54.347' AS DateTime), CAST(N'2022-12-12T00:59:25.473' AS DateTime), 0, 0, NULL, 5625.937632, 8)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (10, CAST(N'2022-12-11T23:08:10.560' AS DateTime), CAST(N'2022-12-12T00:59:33.390' AS DateTime), 0, 0, NULL, 5569.0239686666664, 9)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (11, CAST(N'2022-12-11T23:10:23.110' AS DateTime), CAST(N'2022-12-12T00:59:45.157' AS DateTime), 0, 0, NULL, 5468.372172, 10)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (12, CAST(N'2022-12-11T23:21:27.120' AS DateTime), CAST(N'2022-12-12T00:59:53.167' AS DateTime), 0, 0, NULL, 4921.7041884166665, 11)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (13, CAST(N'2022-12-11T23:24:41.230' AS DateTime), CAST(N'2022-12-12T01:00:02.407' AS DateTime), 0, 0, NULL, 4767.6469318333329, 12)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (14, CAST(N'2022-12-11T23:29:30.887' AS DateTime), CAST(N'2022-12-12T01:00:14.323' AS DateTime), 1, 1360.858869125, N'FAC12', 3175.3373612916666, 13)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (15, CAST(N'2022-12-12T00:51:16.410' AS DateTime), CAST(N'2022-12-12T00:57:16.330' AS DateTime), 0, 0, NULL, 299.93351791666669, 4)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (16, CAST(N'2022-12-12T01:00:41.117' AS DateTime), CAST(N'2022-12-12T01:00:44.597' AS DateTime), 0, 0, NULL, 2.8999618333333332, 13)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (17, CAST(N'2022-12-12T11:30:20.823' AS DateTime), CAST(N'2022-12-12T11:30:51.473' AS DateTime), 0, 0, NULL, 25.54168575, 4)
INSERT [dbo].[RegistroVehiculo] ([RegistroVehiculoId], [RegistroVehiculoHoraIngreso], [RegistroVehiculoHoraSalida], [RegistroVehiculoAplicaDescuento], [RegistroVehiculoValorDescuento], [RegistroVehiculoFacturaRelacionada], [RegistroVehiculoValorTotal], [VehiculoId]) VALUES (18, CAST(N'2022-12-12T11:36:05.950' AS DateTime), CAST(N'2022-12-12T11:36:34.290' AS DateTime), 0, 0, NULL, 23.617945166666669, 4)
SET IDENTITY_INSERT [dbo].[RegistroVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarifa] ON 

INSERT [dbo].[Tarifa] ([TarifaId], [TarifaValor], [TipoVehiculoId]) VALUES (1, CAST(110 AS Decimal(18, 0)), 1)
INSERT [dbo].[Tarifa] ([TarifaId], [TarifaValor], [TipoVehiculoId]) VALUES (2, CAST(50 AS Decimal(18, 0)), 2)
INSERT [dbo].[Tarifa] ([TarifaId], [TarifaValor], [TipoVehiculoId]) VALUES (3, CAST(10 AS Decimal(18, 0)), 3)
SET IDENTITY_INSERT [dbo].[Tarifa] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoVehiculo] ON 

INSERT [dbo].[TipoVehiculo] ([TipoVehiculoId], [TipoVehiculoDescripcion]) VALUES (1, N'Carro')
INSERT [dbo].[TipoVehiculo] ([TipoVehiculoId], [TipoVehiculoDescripcion]) VALUES (2, N'Moto')
INSERT [dbo].[TipoVehiculo] ([TipoVehiculoId], [TipoVehiculoDescripcion]) VALUES (3, N'Bicicleta')
SET IDENTITY_INSERT [dbo].[TipoVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehiculo] ON 

INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (1, N'QZF72C', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (2, N'CYM89G', 1)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (3, N'QZF73C', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (4, N'cym56e', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (5, N'cym57e', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (7, N'cym59e', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (8, N'cym51e', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (9, N'cym46e', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (10, N'cym36e', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (11, N'cym26e', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (12, N'cym16e', 2)
INSERT [dbo].[Vehiculo] ([VehiculoId], [VehiculoPlaca], [TipoVehiculoId]) VALUES (13, N'cym06e', 2)
SET IDENTITY_INSERT [dbo].[Vehiculo] OFF
GO
ALTER TABLE [dbo].[Tarifa]  WITH CHECK ADD  CONSTRAINT [FK_Tarifa_TipoVehiculo] FOREIGN KEY([TipoVehiculoId])
REFERENCES [dbo].[TipoVehiculo] ([TipoVehiculoId])
GO
ALTER TABLE [dbo].[Tarifa] CHECK CONSTRAINT [FK_Tarifa_TipoVehiculo]
GO
ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_TipoVehiculo] FOREIGN KEY([TipoVehiculoId])
REFERENCES [dbo].[TipoVehiculo] ([TipoVehiculoId])
GO
ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_TipoVehiculo]
GO
