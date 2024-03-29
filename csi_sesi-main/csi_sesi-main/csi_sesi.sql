USE [pepino]
GO
/****** Object:  Table [dbo].[arma]    Script Date: 28/02/2024 18:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arma](
	[idArma] [int] NOT NULL,
	[descricao] [varchar](40) NOT NULL,
	[fabricante] [varchar](20) NOT NULL,
	[tipo] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_arma] PRIMARY KEY CLUSTERED 
(
	[idArma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[criminoso]    Script Date: 28/02/2024 18:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[criminoso](
	[codigoCriminoso] [int] NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cpf] [numeric](11, 0) NOT NULL,
	[rg] [varchar](20) NOT NULL,
	[datanasc] [date] NOT NULL,
	[foto] [nvarchar](100) NOT NULL,
	[impressao] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_criminoso] PRIMARY KEY CLUSTERED 
(
	[codigoCriminoso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ocorrencia]    Script Date: 28/02/2024 18:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ocorrencia](
	[idOcorrencia] [smallint] NOT NULL,
	[descricao] [nvarchar](100) NOT NULL,
	[local] [varchar](30) NOT NULL,
	[data] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[vitima] [int] NOT NULL,
	[bandidin] [int] NOT NULL,
	[policia] [int] NOT NULL,
	[arma] [int] NOT NULL,
 CONSTRAINT [PK_ocorrencia] PRIMARY KEY CLUSTERED 
(
	[idOcorrencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[policial]    Script Date: 28/02/2024 18:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[policial](
	[idPolicia] [int] NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cpf] [numeric](11, 0) NOT NULL,
	[rg] [varchar](20) NOT NULL,
	[telefone] [nvarchar](25) NOT NULL,
	[cargo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_policial] PRIMARY KEY CLUSTERED 
(
	[idPolicia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vitima]    Script Date: 28/02/2024 18:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vitima](
	[idVitima] [int] NOT NULL,
	[nome] [varchar](80) NOT NULL,
	[cpf] [numeric](11, 0) NOT NULL,
	[rg] [varchar](20) NOT NULL,
	[telefone] [varchar](20) NOT NULL,
	[email] [varchar](60) NOT NULL,
	[datanasc] [date] NOT NULL,
 CONSTRAINT [PK_vitima] PRIMARY KEY CLUSTERED 
(
	[idVitima] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33325, N'Renato Gabriel Kauê Assis', CAST(77855194126 AS Numeric(11, 0)), N'392106024', CAST(N'1999-04-05' AS Date), N'https://drive.google.com/file/d/1MqET6edTIuEDKFx0ZzALofukUNyQP2oP/view?usp=drive_link', N'https://drive.google.com/file/d/1thAiilQB0PX82biFX0FVRCgdMBARJIeg/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33329, N'Elias Lucas Pinto', CAST(2792762730 AS Numeric(11, 0)), N'481861944', CAST(N'1995-01-15' AS Date), N'https://drive.google.com/file/d/1Et1Zf7RQvNYgDxuHqHdnZo62ZPN9ZM-C/view?usp=drive_link', N'https://drive.google.com/file/d/1Tru3Qc1afKtThOsm4Q0iH-5m_mujfAXD/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33334, N'Isabel Tatiane Jéssica Nascimento', CAST(89700440354 AS Numeric(11, 0)), N'364069958', CAST(N'1990-03-14' AS Date), N'https://drive.google.com/file/d/1gB8TAgEtuf3GUVByGxpyh8sPh5poX5cJ/view?usp=drive_link', N'https://drive.google.com/file/d/19rgUXQNnWoMHlC3tvoLX5vKjGIWmRtcZ/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33341, N'Rafael Caleb das Neves', CAST(83968026888 AS Numeric(11, 0)), N'143428457', CAST(N'1983-07-07' AS Date), N'https://drive.google.com/file/d/1y6u_Qbtw4T1Gzz79GYbrIoEu_jIfJsHr/view?usp=drive_link', N'https://drive.google.com/file/d/1NbYRNyRPBClEqRc5V7xzKdEBlpcNtEwN/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33343, N'Alessandra Tereza Freitas', CAST(53705794230 AS Numeric(11, 0)), N'452554949', CAST(N'1981-02-17' AS Date), N'https://drive.google.com/file/d/1Cup3wM8OtLw25sQAqqHmnEifZhj04p4K/view?usp=drive_link', N'https://drive.google.com/file/d/1jHlX2CulcVQqIZRKEnqZmdMBuSsAoKbR/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33350, N'Olivia Vanessa Vieira', CAST(22567160582 AS Numeric(11, 0)), N'363425457', CAST(N'1974-03-22' AS Date), N'https://drive.google.com/file/d/1Zkiv8Kn9G_WmpUoJ-kynlCogkDExIFBt/view?usp=drive_link', N'https://drive.google.com/file/d/1jHlX2CulcVQqIZRKEnqZmdMBuSsAoKbR/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33354, N'Alice Aline Mendes', CAST(9243147617 AS Numeric(11, 0)), N'264993627', CAST(N'1970-02-02' AS Date), N'https://drive.google.com/file/d/1cNzSHvEfBmOvDDePjU259bbwcgVza-kR/view?usp=drive_link', N'https://drive.google.com/file/d/1x2Mhaz1p7UioWYflpOf9Z1q9gwlkAlN4/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33361, N'Alícia Heloise Raimunda Farias', CAST(36219593430 AS Numeric(11, 0)), N'469390591', CAST(N'1963-08-13' AS Date), N'https://drive.google.com/file/d/18Y9bC8i_F1yVRu94NDpwFUfZPM9G-_SW/view?usp=drive_link', N'https://drive.google.com/file/d/1zlyobcsYF5m9uB3GsjpnR8bXbSCttDp0/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33363, N'Bianca Lorena Silva', CAST(82120628300 AS Numeric(11, 0)), N'245358638', CAST(N'1961-02-18' AS Date), N'https://drive.google.com/file/d/1no4A7SAQh2SayUyewHuhnA7yxEtHuVA_/view?usp=drive_link', N'https://drive.google.com/file/d/1Z9gC-40eLPq10CCZ7LfTljvuhMWV75BI/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33369, N'Noah Geraldo Pedro Henrique Dias', CAST(51037640756 AS Numeric(11, 0)), N'464426339', CAST(N'1955-11-10' AS Date), N'https://drive.google.com/file/d/16UygZkxrJJAVd4qt57Q6j4oOn63_8WIq/view?usp=drive_link', N'https://drive.google.com/file/d/11VEswNTLyRJ8aWs6Uca-LjUO8LVQH6gl/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33372, N'Bryan Gael Cauã Galvão', CAST(67914034622 AS Numeric(11, 0)), N'189218770', CAST(N'1952-04-27' AS Date), N'https://drive.google.com/file/d/1ZouwknghdtaVL7WNQasegWbrDaqtjqO3/view?usp=drive_link', N'https://drive.google.com/file/d/1mPlcDO-emOzrGbxve-Qu8r0Ld_lCx8o4/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33378, N'Márcio Tiago Nogueira', CAST(58281798025 AS Numeric(11, 0)), N'294005225', CAST(N'1946-02-13' AS Date), N'https://drive.google.com/file/d/1IkGBPu095tB515jhIjCNz7fON00cS9jZ/view?usp=drive_link', N'https://drive.google.com/file/d/1OFn46DR9BN_Bkhd5jFNi8Gw4k7SPzLj2/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33392, N'Vera Isadora Larissa Lima', CAST(41126936308 AS Numeric(11, 0)), N'444382641', CAST(N'1972-02-20' AS Date), N'https://drive.google.com/file/d/1xrIrDWS-TgFAdB4RyIbHouOFPM7dN0-o/view?usp=drive_link', N'https://drive.google.com/file/d/1thAiilQB0PX82biFX0FVRCgdMBARJIeg/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33463, N'Gabrielly Maria Tânia Almeida', CAST(93437788485 AS Numeric(11, 0)), N'126892520', CAST(N'1961-06-21' AS Date), N'https://drive.google.com/file/d/11EjY9xHj7iRAAq7-R0mt1qswF4TezlxP/view?usp=drive_link', N'https://drive.google.com/file/d/10SrpcxLiEUgp_EHgxE-KhoCzCNSBtUdY/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (33734, N'Analu Adriana Ester Bernardes', CAST(65308304130 AS Numeric(11, 0)), N'297216399', CAST(N'1990-07-08' AS Date), N'https://drive.google.com/file/d/18ZxK1xJIfee1pE4tXcyjuAHAQnxk7CCo/view?usp=drive_link', N'https://drive.google.com/file/d/1ZQ5GONFg9MRmv5gYqfbBPKBPB3nssCZW/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55518, N'Fabiano Alessandro da Rocha', CAST(95788799031 AS Numeric(11, 0)), N'161063317', CAST(N'2006-01-17' AS Date), N'https://drive.google.com/file/d/1Bjv9akk_LnSvKxBjpewQsVCH9Zt-D-m4/view?usp=drive_link', N'https://drive.google.com/file/d/1dKgBtHC9tYcjM8MqB2-Asdrc_qZ1kO5F/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55521, N'Aurora Stella Castro', CAST(20435961446 AS Numeric(11, 0)), N'187638196', CAST(N'2003-09-10' AS Date), N'https://drive.google.com/file/d/1tRNicy8uQksI3wjJI3HSZs4_fBzFhUCJ/view?usp=drive_link', N'https://drive.google.com/file/d/1g-eMmrYeJAD9ITesp_uvRo-NovLI8nOB/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55523, N'Kauê Matheus da Costa', CAST(63408577528 AS Numeric(11, 0)), N'504037754', CAST(N'2001-04-02' AS Date), N'https://drive.google.com/file/d/1-iabb2O0PBvHlyitNJOfIr48sXYLRfF4/view?usp=drive_link', N'https://drive.google.com/file/d/146DcxMlgyHzPE5U-mO5XW8zbzkS35AJ8/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55525, N'Julia Josefa Aragão', CAST(79568403175 AS Numeric(11, 0)), N'167562691', CAST(N'1999-02-21' AS Date), N'https://drive.google.com/file/d/1EdBn9KcWsh4b-zrF8MB1ZqI2ectnsHQo/view?usp=drive_link', N'https://drive.google.com/file/d/1lrCpIgqI084PMdzO1RIjg2ZPxhcD3N_R/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55526, N'Lucas Benício Castro', CAST(89959381455 AS Numeric(11, 0)), N'340431295', CAST(N'1998-10-29' AS Date), N'https://drive.google.com/file/d/1Tp3HX9tKS_SWDPNx03XdB6z2cpsL4iSt/view?usp=drive_link', N'https://drive.google.com/file/d/1eimLKzvYkVa5__5_IaxMWLXgBG5x_VzY/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55527, N'Raimunda Isis Eduarda da Mata', CAST(84946328688 AS Numeric(11, 0)), N'230710505', CAST(N'1997-03-29' AS Date), N'https://drive.google.com/file/d/1GR8i9mw3ZC9xd55gqoOKB46PaKXc0MVW/view?usp=drive_link', N'https://drive.google.com/file/d/1WAhe3XM_YJM1h0r5e7sBUwZJqCS7rHxs/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55529, N'Davi Bryan Santos', CAST(22547749807 AS Numeric(11, 0)), N'270962396', CAST(N'1980-11-14' AS Date), N'https://drive.google.com/file/d/1CEnikYojsB1cACe6xmemBNMquBI2aRti/view?usp=drive_link', N'https://drive.google.com/file/d/1rnUbe3wuTS4F9N7IMfU3OB2SY7O1oqMg/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55534, N'Caleb Cauã Galvão', CAST(74691561196 AS Numeric(11, 0)), N'222592266', CAST(N'1990-07-20' AS Date), N'https://drive.google.com/file/d/1Slmw8_jU5jLcPNXVW-3L2L8WFV9_dbx_/view?usp=drive_link', N'https://drive.google.com/file/d/1xeV4PDCy-5ng7vr9QMLZ4JCNfkslz2Zz/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55535, N'Olivia Caroline Regina da Luz', CAST(18781608420 AS Numeric(11, 0)), N'466560965', CAST(N'1999-11-01' AS Date), N'https://drive.google.com/file/d/1ke0arMx7Ml3O45i8KLbvKEkMkHwPJN3q/view?usp=drive_link', N'https://drive.google.com/file/d/1WAhe3XM_YJM1h0r5e7sBUwZJqCS7rHxs/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55536, N'Elza Manuela Nunes', CAST(48013564436 AS Numeric(11, 0)), N'239164933', CAST(N'1988-06-30' AS Date), N'https://drive.google.com/file/d/1WQYQ6MMegMMlzQz51sAIEJb16V4ECg-L/view?usp=drive_link', N'https://drive.google.com/file/d/1WAhe3XM_YJM1h0r5e7sBUwZJqCS7rHxs/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55540, N'Márcia Joana Duarte', CAST(3451665743 AS Numeric(11, 0)), N'222606125', CAST(N'1984-03-11' AS Date), N'https://drive.google.com/file/d/1O_LlL6gN5Fg4sZ4cPit6VgWE_0QC13yQ/view?usp=drive_link', N'https://drive.google.com/file/d/1HtRTmM4Ygyi4-kGDlfW0-TC4sk7K3QbL/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55541, N'Samuel Renan Gomes', CAST(55830549727 AS Numeric(11, 0)), N'270865111', CAST(N'1983-04-28' AS Date), N'https://drive.google.com/file/d/1IRDct08Hk87aQm0hUrK4067PqP9g7IY5/view?usp=drive_link', N'https://drive.google.com/file/d/1dVDjBG9yrKhBMiQZmE67Ii19IsTU1v03/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55542, N'Marlene Lavínia Tereza da Cunha', CAST(22522503057 AS Numeric(11, 0)), N'154275724', CAST(N'1982-03-06' AS Date), N'https://drive.google.com/file/d/1DBd8fluIZBB_hSKLL3pmI71Q6V2jXyYR/view?usp=drive_link', N'https://drive.google.com/file/d/15C1_iwoXZMiTnmCKLexmdRZl8CQCz5jx/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55543, N'Paulo Benício Sales', CAST(33898448649 AS Numeric(11, 0)), N'316705275', CAST(N'1993-12-25' AS Date), N'https://drive.google.com/file/d/1uMVicpHO6H472wpVSneCRC_r8x1F43Sl/view?usp=drive_link', N'https://drive.google.com/file/d/1zc18OnCijXkkVmI4ocRlCEhhavxGVmyO/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55546, N'Antônio Sunny Oliveira', CAST(92143600305 AS Numeric(11, 0)), N'311336139', CAST(N'1980-05-20' AS Date), N'https://drive.google.com/file/d/1n1FkEu9kMdCyFhh_yggB07b0x-wVwkNX/view?usp=drive_link', N'https://drive.google.com/file/d/1ojgAD7x8yRuj5MDpZ8j2xH6WbKYXdxhL/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55553, N'Teodoro Bento da Costa', CAST(54854451360 AS Numeric(11, 0)), N'487604374', CAST(N'2001-08-12' AS Date), N'https://drive.google.com/file/d/1wLYl61gYckoaQlHEv-6X8Eg2rhjxbDGr/view?usp=drive_link', N'https://drive.google.com/file/d/172BLZK5mAlSAWXN9POK19mRtrRQz-lN7/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55554, N'Erick Osvaldo Calebe Barros', CAST(36686798193 AS Numeric(11, 0)), N'384021359', CAST(N'1998-12-12' AS Date), N'https://drive.google.com/file/d/1zMQAdxacU6mI6AiwAyYDYXcIpdU4tPxf/view?usp=drive_link', N'https://drive.google.com/file/d/1LhvhWjN35iui6_SYuBPDLp8XE27ixdov/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55555, N'Vicente Samuel Nelson Martins', CAST(84285643618 AS Numeric(11, 0)), N'465671378', CAST(N'1969-11-12' AS Date), N'https://drive.google.com/file/d/19reeP5ozOmddUcSYEXrz9cKPET_vuQcc/view?usp=drive_link', N'https://drive.google.com/file/d/1A2XkYaXQane1pM7yeLc6FVO61HOBNNxv/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55560, N'Diogo Hugo da Conceição', CAST(40078500389 AS Numeric(11, 0)), N'128386393', CAST(N'1964-11-01' AS Date), N'https://drive.google.com/file/d/1p8vee4qBpXEjHQNnC2sh5dACyrgVH9KK/view?usp=drive_link', N'https://drive.google.com/file/d/15VN2qrCENR0Ee41BHKMIXm-9AAptrr0-/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55564, N'Sandro Henry Pires', CAST(65295311902 AS Numeric(11, 0)), N'137713137', CAST(N'2000-01-15' AS Date), N'https://drive.google.com/file/d/1z2z0Svp4OXnb44HCXnacekJyTJhD88Kn/view?usp=drive_link', N'https://drive.google.com/file/d/1zMHw4ZfJGAmYnqFQbKOF9EYbwUCTojci/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55565, N'Elisa Julia Dias', CAST(77525600228 AS Numeric(11, 0)), N'127167079', CAST(N'1960-12-25' AS Date), N'https://drive.google.com/file/d/1mGcMNutp4Ed1vZK9kGPl1uJ29zIoVCsC/view?usp=drive_link', N'https://drive.google.com/file/d/14E_2pEgaKpT23PzuSMppvcSeMEevixIw/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55568, N'Emanuelly Sônia Silva', CAST(85740109108 AS Numeric(11, 0)), N'299515540', CAST(N'1985-08-25' AS Date), N'https://drive.google.com/file/d/1tjyhd81YSEkIY7_OImNnAvR7ExFRdWJq/view?usp=drive_link', N'https://drive.google.com/file/d/19w9Wkv4of1Bl8g9_Mx-xXAaUlLmN5SKR/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55572, N'Milton Luan Aparício', CAST(11800629060 AS Numeric(11, 0)), N'447618416', CAST(N'2000-01-01' AS Date), N'https://drive.google.com/file/d/1g7ypYdTKTP84eiFO-OlfWdE11NwxleuY/view?usp=drive_link', N'https://drive.google.com/file/d/194d2BZLDb_CpzjeswrDYlMI8DutwicQ_/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55573, N'Diogo Henrique Juan Corte Real', CAST(87347870623 AS Numeric(11, 0)), N'341267181', CAST(N'2002-07-13' AS Date), N'https://drive.google.com/file/d/18Fjv_p71vXVPx0AMisIXRHW10NJmLTdT/view?usp=drive_link', N'https://drive.google.com/file/d/17cs-MHT-pajI4cmGh-_Z1W7T8zAZgDOF/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55574, N'Carlos Caleb Vinicius Costa', CAST(21937301052 AS Numeric(11, 0)), N'141205507', CAST(N'1990-05-22' AS Date), N'https://drive.google.com/file/d/1YhuiOH4Mf5LA-uXowmgepfZG_BNcJEaV/view?usp=drive_link', N'https://drive.google.com/file/d/1icQbn03vyeWj_upEaKrd47j9FnJX8Evc/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55576, N'Mário Eduardo Barbosa', CAST(56097222840 AS Numeric(11, 0)), N'120440696', CAST(N'1948-10-10' AS Date), N'https://drive.google.com/file/d/1zlhos3OqLh1rW05ep8VtYwdSRTJneoPi/view?usp=drive_link', N'https://drive.google.com/file/d/13Mj0db_493YCbx43yOd-2GezingBG_Iq/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55577, N'Gabrielly Alessandra Vieira', CAST(18221428574 AS Numeric(11, 0)), N'321306922', CAST(N'1996-08-30' AS Date), N'https://drive.google.com/file/d/1dv9CfEEQvfUat5WNMUXIjLwhqfXhleog/view?usp=drive_link', N'https://drive.google.com/file/d/1oGcNuL3BVhgDvwUSXhGkgfiimuuOJXfo/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55579, N'Emily Tereza Nogueira', CAST(8836458076 AS Numeric(11, 0)), N'236596263', CAST(N'1994-04-18' AS Date), N'https://drive.google.com/file/d/1hLcUaYUk2j893FqnEgwRrH2J33wRWTHp/view?usp=drive_link', N'https://drive.google.com/file/d/1DkE2uK3KpxsTFGyKZGO5Rs67CyjQabLR/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55580, N'Flávio Hadameres Bernardes', CAST(36371584693 AS Numeric(11, 0)), N'206879696', CAST(N'1984-04-22' AS Date), N'https://drive.google.com/file/d/1SSD7TkryjIe13T5ZWGpZWwEf2Dwj0a6N/view?usp=drive_link', N'https://drive.google.com/file/d/1mwXgxXP9riDI_0rwLV5c4u-zDq42gon5/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (55585, N'João Cauã Caio Melo', CAST(18471223538 AS Numeric(11, 0)), N'388526488', CAST(N'1989-04-26' AS Date), N'https://drive.google.com/file/d/1iNevuWsjvTRWaDjPcjCEiTcmDJ7T_xdi/view?usp=drive_link', N'https://drive.google.com/file/d/1tKzG5vYlC0rd6OPr89ge7EUB9KRo04AO/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (77726, N'Augusto Benjamin Iago Pinto', CAST(34307181123 AS Numeric(11, 0)), N'383823274', CAST(N'1998-09-17' AS Date), N'https://drive.google.com/file/d/13fH5ABHxOBDSAanSImh4D8ZugtG8amXy/view?usp=drive_link', N'https://drive.google.com/file/d/1mJ51jHWus2xpmxglgMu-entp_MNRdgsu/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (77743, N'Helron Ayff Brito', CAST(77720205707 AS Numeric(11, 0)), N'429803436', CAST(N'1981-06-30' AS Date), N'https://drive.google.com/file/d/1Gevm-rS9GGjned1OnD-HuwBW-DxpRm2w/view?usp=drive_link', N'https://drive.google.com/file/d/1gxcGyNFacKGNvK3mqM2a_3s_aa0Mo1ug/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (77752, N'Sophia Emilly Souza', CAST(64374247106 AS Numeric(11, 0)), N'215677134', CAST(N'1997-12-05' AS Date), N'https://drive.google.com/file/d/1Rt2LFekw47seqqpHTwxNBdWGAXkY7SvM/view?usp=drive_link', N'https://drive.google.com/file/d/1yzJxAWJS3Ad7Nk2jJuTF63E9y9r-c871/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (77776, N'Isaque Manuel Lima', CAST(55482501914 AS Numeric(11, 0)), N'219542582', CAST(N'1966-05-08' AS Date), N'https://drive.google.com/file/d/1sz6cniPS-TNagQrIsDn_P6xxMa5xiJMU/view?usp=drive_link', N'https://drive.google.com/file/d/15cgJ7Twcn2YTvCJndn6nsrNpH-qwYZWw/view?usp=drive_link')
INSERT [dbo].[criminoso] ([codigoCriminoso], [nome], [cpf], [rg], [datanasc], [foto], [impressao]) VALUES (77777, N'Isabel Carolina Heloise da Rosa', CAST(29099372167 AS Numeric(11, 0)), N'114383467', CAST(N'1998-12-31' AS Date), N'https://drive.google.com/file/d/1d7Eqq-KYIsjaO5JCTY2tW9e65pUyHSKf/view?usp=drive_link', N'https://drive.google.com/file/d/1BU20B5ZLqSmjZ76eV4dWIMNvsoAL-Y-K/view?usp=drive_link')
GO
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (87720, N'Francisco Danilo Anthony Pereira', CAST(3329932210 AS Numeric(11, 0)), N'290926853', N'(99) 5555-40002', N'escrivao')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (87721, N'Maya Nair Letícia Pinto', CAST(22358213594 AS Numeric(11, 0)), N'385423597', N'(99) 5555-4052', N'escrivao')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (87741, N'Luan Felipe Rodrigo Monteiro', CAST(45875640448 AS Numeric(11, 0)), N'156703683', N'(99) 5555-2333', N'carcereiro')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (87743, N'Tatiane Cecília Letícia da Cunha', CAST(95608158903 AS Numeric(11, 0)), N'204179981', N'(99) 5555-4052', N'carcereiro')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (87752, N'Rodrigo Raimundo Martin Drumond', CAST(34471322214 AS Numeric(11, 0)), N'430011076', N'(99) 5555-9858', N'plantonista')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (87778, N'Aline Sebastiana da Mata', CAST(89041408118 AS Numeric(11, 0)), N'430101004', N'(99) 5555-4052', N'escrivao')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88825, N'Miguel Thales Nelson Assis', CAST(21436590248 AS Numeric(11, 0)), N'204789461', N'(99) 5555-8788', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88828, N'Renan Mateus Mendes', CAST(81759356182 AS Numeric(11, 0)), N'505571663', N'(99) 5555-7877', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88829, N'Bruno Igor Cardoso', CAST(22973800978 AS Numeric(11, 0)), N'108688884', N'(99) 5555-4158', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88833, N'Lorenzo Ricardo Almeida', CAST(62593819480 AS Numeric(11, 0)), N'222368202', N'(99) 5555-1214', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88834, N'Thiago Paulo Caldeira', CAST(63668262691 AS Numeric(11, 0)), N'230438908', N'(99) 5555-2521', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88840, N'Regina Nicole Vieira', CAST(49568979441 AS Numeric(11, 0)), N'431892076', N'(99) 5555-9858', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88843, N'Jéssica Cláudia Campos', CAST(25204365303 AS Numeric(11, 0)), N'360148979', N'(99) 5555-1001', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88848, N'Lorenzo Vicente Pires', CAST(28278527563 AS Numeric(11, 0)), N'207628798', N'(99) 5555-9001', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88851, N'Kevin Carlos Assunção', CAST(51928110231 AS Numeric(11, 0)), N'332069308', N'(99) 5555-3152', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88852, N'Nicole Lavínia Nunes', CAST(77049866270 AS Numeric(11, 0)), N'302896077', N'(99) 5555-6336', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88854, N'Guilherme Manuel Castro', CAST(50037188968 AS Numeric(11, 0)), N'471657700', N'(99) 5555-6933', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88858, N'Carlos Leonardo Alves', CAST(48461089375 AS Numeric(11, 0)), N'295108745', N'(99) 5555-2005', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88859, N'Anderson Caleb Melo', CAST(55788245443 AS Numeric(11, 0)), N'403904092', N'(99) 5555-4187', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88861, N'Isabella Alícia Martins', CAST(57228035100 AS Numeric(11, 0)), N'186751308', N'(99) 5555-2008', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88862, N'Pedro Tomás Alexandre Corte Real', CAST(55086234000 AS Numeric(11, 0)), N'474406520', N'(99) 5555-4052', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88864, N'Márcio Giovanni Porto', CAST(24507314070 AS Numeric(11, 0)), N'108759477', N'(99) 5555-2799', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88872, N'Benjamin Renato Marcos Ferreira', CAST(17459586730 AS Numeric(11, 0)), N'190529507', N'(99) 5555-7447', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88873, N'Pedro Sérgio Duarte', CAST(88152360740 AS Numeric(11, 0)), N'338783805', N'(99) 5555-9548', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88876, N'Mariana Joana Sales', CAST(40288180445 AS Numeric(11, 0)), N'277445802', N'(99) 5555-8963', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88878, N'Carolina Malu Marina Silveira', CAST(67396675278 AS Numeric(11, 0)), N'482404851', N'(99) 5555-3002', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (88879, N'Agatha Sophia da Luz', CAST(44354916134 AS Numeric(11, 0)), N'220810795', N'(99) 5555-3998', N'policial')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (99932, N'Luana Bárbara Rayssa Freitas', CAST(72899983679 AS Numeric(11, 0)), N'155663471', N'(99) 5544-0002', N'delegado')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (99949, N'Isaac Renan Davi Fogaça', CAST(25445237354 AS Numeric(11, 0)), N'400849306', N'(99) 5544-0003', N'delegado')
INSERT [dbo].[policial] ([idPolicia], [nome], [cpf], [rg], [telefone], [cargo]) VALUES (99952, N'Benjamin Edson Noah das Neves', CAST(6227851680 AS Numeric(11, 0)), N'245600577', N'(99) 5544-0001', N'delegado')
GO
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11119, N'Levi Cláudio Bento da Rocha', CAST(77950213442 AS Numeric(11, 0)), N'291181612', N'6135789666', N'levi.claudio.darocha@gruposeteestrelas.com.br', CAST(N'2005-01-10' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11120, N'Eduardo Nelson Theo Mendes', CAST(17017958330 AS Numeric(11, 0)), N'242313899', N'6328826650', N'eduardo.nelson.mendes@pig.com.br', CAST(N'2004-02-10' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11122, N'Rita Andrea Emanuelly Moreira', CAST(20526070994 AS Numeric(11, 0)), N'173160797', N'2725741004', N'rita_moreira@mrarquitetura.com.br', CAST(N'2002-04-01' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11125, N'Thales Marcos Caio da Rosa', CAST(33800889439 AS Numeric(11, 0)), N'491119732', N'6238294626', N'thales_darosa@anbima.com.br', CAST(N'1999-01-18' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11127, N'Carolina Isabella da Mota', CAST(25882450306 AS Numeric(11, 0)), N'207596499', N'4128415435', N'carolina-damota91@pss.adv.br', CAST(N'1997-01-01' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11129, N'Mário Samuel Fogaça', CAST(41611435595 AS Numeric(11, 0)), N'339571809', N'2126876383', N'mario.samuel.fogaca@muricy.com', CAST(N'1995-01-01' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11134, N'Luna Juliana Analu Pereira', CAST(59662166653 AS Numeric(11, 0)), N'430964705', N'8325299886', N'luna_pereira@tafeta.com.br', CAST(N'1990-01-06' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11136, N'Luzia Vera da Silva', CAST(71809226503 AS Numeric(11, 0)), N'473731290', N'6236189912', N'luzia_dasilva@orteca.com.br', CAST(N'1988-02-21' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11141, N'Gabriela Natália Sophia Ferreira', CAST(99110053999 AS Numeric(11, 0)), N'230776462', N'1736295612', N'gabriela_ferreira@tcotecnologia.com.br', CAST(N'1983-01-01' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11144, N'Davi Augusto Augusto Monteiro', CAST(85525784688 AS Numeric(11, 0)), N'252006185', N'4339553226', N'davi.augusto.monteiro@cteep.com.br', CAST(N'1980-02-10' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11148, N'Oliver Cláudio Freitas', CAST(13360716990 AS Numeric(11, 0)), N'340072945', N'5128035065', N'oliver-freitas75@fcfar.unesp.br', CAST(N'1976-02-13' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11150, N'Vitória Alícia Novaes', CAST(43505998516 AS Numeric(11, 0)), N'381801603', N'6837282249', N'vitoria_alicia_novaes@engeseg.com.br', CAST(N'1974-01-03' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11153, N'Pietra Lara Manuela Sales', CAST(11447597222 AS Numeric(11, 0)), N'296970499', N'5326361180', N'pietralarasales@compecia.com.br', CAST(N'1971-02-03' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11155, N'Cláudia Ester Campos', CAST(13232901093 AS Numeric(11, 0)), N'116692455', N'6837541633', N'claudia_ester_campos@europamotors.com.br', CAST(N'1969-02-22' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11157, N'Anthony Bernardo Silveira', CAST(25218818054 AS Numeric(11, 0)), N'309860714', N'5129856393', N'anthony.bernardo.silveira@oi.com.br', CAST(N'1967-02-10' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11158, N'Francisco Bruno Nicolas Nunes', CAST(94415039162 AS Numeric(11, 0)), N'278820207', N'3427299964', N'francisco_nunes@hersa.com.br', CAST(N'1966-01-10' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11159, N'Sophia Julia Natália dos Santos', CAST(78536659033 AS Numeric(11, 0)), N'403020141', N'5139717638', N'sophia-dossantos72@cosma.com', CAST(N'1965-02-04' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11160, N'Sônia Vitória Rocha', CAST(64808587009 AS Numeric(11, 0)), N'204966036', N'1738342237', N'sonia_vitoria_rocha@sabereler.com.br', CAST(N'1964-01-19' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11164, N'Marcelo Bruno Davi Porto', CAST(15841350420 AS Numeric(11, 0)), N'288123931', N'6937078746', N'marcelo_bruno_porto@eccotrans.com.br', CAST(N'1960-01-19' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11166, N'Sophia Alice Esther Brito', CAST(43046885458 AS Numeric(11, 0)), N'489811413', N'2426776268', N'sophia_brito@numero.com.br', CAST(N'1958-02-11' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11168, N'Cecília Analu Márcia Pires', CAST(89283710584 AS Numeric(11, 0)), N'126898212', N'6127757098', N'ceciliaanalupires@abcautoservice.net', CAST(N'1956-02-01' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11170, N'Priscila Elza Aragão', CAST(87127370389 AS Numeric(11, 0)), N'484656491', N'8638237185', N'priscila-aragao91@lojaprincezinha.com.br', CAST(N'1954-02-06' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11172, N'Raimundo Nelson Manoel Gonçalves', CAST(4892632759 AS Numeric(11, 0)), N'151221285', N'5129111221', N'raimundo.nelson.goncalves@quimicaindaiatuba.com.br', CAST(N'1952-02-01' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11174, N'Severino Rafael Gael Duarte', CAST(61096229587 AS Numeric(11, 0)), N'116702333', N'6127543309', N'severino_duarte@gmalato.com.br', CAST(N'1950-01-01' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11178, N'Sophia Josefa Lima', CAST(17729513900 AS Numeric(11, 0)), N'458527373', N'8129344168', N'sophiajosefalima@sha.com.br', CAST(N'1946-01-03' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11218, N'Gael Iago Rodrigues', CAST(20375291393 AS Numeric(11, 0)), N'483205369', N'6939892657', N'gaeliagorodrigues@vectrausinagem.com.br', CAST(N'2006-02-19' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11241, N'Emily Joana Galvão', CAST(65592925840 AS Numeric(11, 0)), N'439840284', N'8137781780', N'emily_galvao@mesquita.not.br', CAST(N'1983-08-22' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11242, N'Cauã Osvaldo Almeida', CAST(71976278856 AS Numeric(11, 0)), N'150213682', N'8628707630', N'caua_almeida@mosman.com.br', CAST(N'1982-07-02' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11254, N'Allana Joana Lima', CAST(99629535530 AS Numeric(11, 0)), N'327852434', N'6129076363', N'allana-lima92@localiza.com', CAST(N'1970-03-19' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11257, N'Luan Pietro Luís da Paz', CAST(19567563101 AS Numeric(11, 0)), N'463172346', N'2138766779', N'luan-dapaz78@zuinzuin.com.br', CAST(N'1967-06-09' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11258, N'Isaac Rodrigo Kauê Rocha', CAST(73895795011 AS Numeric(11, 0)), N'114351958', N'6125745142', N'isaacrodrigorocha@villalobos.mu.br', CAST(N'1966-02-09' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11259, N'André Francisco Luan Costa', CAST(29245505723 AS Numeric(11, 0)), N'196979729', N'8629359186', N'andre_francisco_costa@candello.abv.br', CAST(N'1965-09-25' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11348, N'Olivia Raquel Costa', CAST(21188359576 AS Numeric(11, 0)), N'186147119', N'9128083367', N'olivia_raquel_costa@kaynak.com.br', CAST(N'1976-01-21' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11350, N'Nicolas Kaique Farias', CAST(62997468400 AS Numeric(11, 0)), N'467521669', N'9636267578', N'nicolas-farias70@cmfcequipamentos.com.br', CAST(N'1974-03-22' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11355, N'Severino Raimundo Viana', CAST(23733893719 AS Numeric(11, 0)), N'272564795', N'6837987356', N'severino.raimundo.viana@yaooll.com', CAST(N'1969-11-25' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (11374, N'Gustavo Erick Campos', CAST(21755484305 AS Numeric(11, 0)), N'464797858', N'5135590246', N'gustavo_campos@brasfrutmanaus.com.br', CAST(N'1950-10-17' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12125, N'Priscila Raimunda Lopes', CAST(89821342043 AS Numeric(11, 0)), N'414373583', N'3526634884', N'priscila_lopes@budsoncorporation.com', CAST(N'1999-02-22' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12220, N'Samuel Lucas da Cruz', CAST(15624670770 AS Numeric(11, 0)), N'442522071', N'8225893750', N'samuellucasdacruz@dgh.com.br', CAST(N'2004-02-04' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12226, N'Carolina Luiza da Luz', CAST(45832601998 AS Numeric(11, 0)), N'282724114', N'9835709927', N'carolina-daluz93@vpsa.com.br', CAST(N'1998-02-12' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12231, N'Valentina Analu Renata Cavalcanti', CAST(76324026167 AS Numeric(11, 0)), N'302509379', N'6526992491', N'valentina_cavalcanti@way2goidiomas.com.br', CAST(N'1993-04-05' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12233, N'Yago Tomás Drumond', CAST(49523429728 AS Numeric(11, 0)), N'139825514', N'6428811343', N'yago_tomas_drumond@bigfoot.com', CAST(N'1991-01-25' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12239, N'Mariah Maria Emanuelly Pires', CAST(69590614078 AS Numeric(11, 0)), N'150964766', N'9535294684', N'mariah.maria.pires@acritica.com.br', CAST(N'1985-01-22' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12245, N'Renan Benjamin Ramos', CAST(62035108152 AS Numeric(11, 0)), N'353018673', N'9535416494', N'renan-ramos72@planicoop.com.br', CAST(N'1979-02-05' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12267, N'Rafael Carlos Enrico Baptista', CAST(6630648803 AS Numeric(11, 0)), N'507596195', N'8339315560', N'rafael-baptista86@cdcd.com.br', CAST(N'1957-02-21' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12272, N'Edson Mateus Pinto', CAST(97002588907 AS Numeric(11, 0)), N'294526468', N'8135845506', N'edsonmateuspinto@torrez.com.br', CAST(N'1952-02-07' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (12275, N'Ana Alícia Moura', CAST(84710853487 AS Numeric(11, 0)), N'476869602', N'5428767420', N'ana_alicia_moura@odebrecht.com', CAST(N'1949-01-18' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (19119, N'Theo Luan Noah Souza', CAST(99281154358 AS Numeric(11, 0)), N'144896035', N'6227814887', N'theo-souza94@brws.com.br', CAST(N'2005-02-05' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21120, N'Gabriel Filipe Mendes', CAST(60622214640 AS Numeric(11, 0)), N'240879910', N'2729885331', N'gabriel.filipe.mendes@bidoul.eng.br', CAST(N'2004-10-11' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21125, N'Thomas Gabriel Brito', CAST(28616397094 AS Numeric(11, 0)), N'176535032', N'9536749131', N'thomas_brito@ornatopresentes.com.br', CAST(N'1999-07-09' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21126, N'Anderson Noah Rodrigo Barros', CAST(6022961530 AS Numeric(11, 0)), N'306603172', N'2737093930', N'anderson_barros@fernandesfilpi.com.br', CAST(N'1998-11-11' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21142, N'Ryan Murilo Leonardo Oliveira', CAST(30711500088 AS Numeric(11, 0)), N'352506556', N'9236618554', N'ryan-oliveira91@prudential.com', CAST(N'1982-04-04' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21144, N'Giovanni Anthony Gustavo da Mota', CAST(53343889822 AS Numeric(11, 0)), N'206403719', N'8228969819', N'giovanni.anthony.damota@jonhdeere.com', CAST(N'1980-05-20' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21148, N'Murilo Eduardo Assunção', CAST(91632697327 AS Numeric(11, 0)), N'158049329', N'4837990893', N'murilo_eduardo_assuncao@etec.sp.gov.br', CAST(N'1976-11-25' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21160, N'Antonio Raimundo Rezende', CAST(21407421255 AS Numeric(11, 0)), N'402754098', N'9435884834', N'antonio-rezende78@almaquinas.com.br', CAST(N'1964-02-15' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21231, N'Nathan Noah Nunes', CAST(33883091758 AS Numeric(11, 0)), N'213766309', N'5139926204', N'nathan-nunes81@db4.com.br', CAST(N'1993-04-21' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21244, N'Cristiane Luna Marlene Bernardes', CAST(75024451880 AS Numeric(11, 0)), N'292495511', N'8138014923', N'cristiane_bernardes@bassanpeixoto.adv.br', CAST(N'1980-02-12' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21254, N'Igor Tomás Dias', CAST(51210403420 AS Numeric(11, 0)), N'370831731', N'9626714072', N'igor_tomas_dias@jsagromecanica.com.br', CAST(N'1980-03-26' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (21273, N'Mariane Valentina Giovana Duarte', CAST(56019978109 AS Numeric(11, 0)), N'312129427', N'4838969973', N'mariane_valentina_duarte@focoreducao.com.br', CAST(N'1951-04-08' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (22252, N'Isabella Elisa Andreia da Cunha', CAST(48193200683 AS Numeric(11, 0)), N'226537997', N'4125934041', N'isabella.elisa.dacunha@milimoveis.com.br', CAST(N'1972-09-30' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (22279, N'Márcia Sophie Silvana Moraes', CAST(83465340949 AS Numeric(11, 0)), N'225760046', N'8639305634', N'marcia-moraes78@klipvirtual.com.br', CAST(N'1945-08-05' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (31120, N'Márcio Pedro Henrique João Fernandes', CAST(68252027407 AS Numeric(11, 0)), N'338391599', N'8429131970', N'marcio_fernandes@pinheiromanaus.com', CAST(N'2004-09-15' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (31136, N'Marcela Mariana Emanuelly Fogaça', CAST(46444695481 AS Numeric(11, 0)), N'387315731', N'2828919436', N'marcela_fogaca@bessa.net.br', CAST(N'1988-04-05' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (31152, N'Andrea Isabella Elaine Nunes', CAST(56124245230 AS Numeric(11, 0)), N'170377982', N'9626130265', N'andrea.isabella.nunes@nogueiramoura.adv.br', CAST(N'1972-04-16' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (31552, N'Fátima Kamilly Silvana da Silva', CAST(66830501636 AS Numeric(11, 0)), N'270543570', N'2437859223', N'fatima.kamilly.dasilva@hmhabitacoesmodernas.com.br', CAST(N'1972-07-08' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (32233, N'Daniel Davi Breno Ribeiro', CAST(40486142078 AS Numeric(11, 0)), N'122811628', N'6729773656', N'daniel_ribeiro@trincheira.com.br', CAST(N'1991-05-14' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (32259, N'Breno Nicolas Gael da Rosa', CAST(84713806765 AS Numeric(11, 0)), N'296074184', N'7136844435', N'brenonicolasdarosa@patrilarm.com.br', CAST(N'1965-06-06' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (32279, N'Samuel Tiago Arthur Silveira', CAST(56383537806 AS Numeric(11, 0)), N'297897767', N'2728642360', N'samuel.tiago.silveira@live.ca', CAST(N'1945-11-04' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (33252, N'Gabriela Pietra Mendes', CAST(20556489268 AS Numeric(11, 0)), N'248443732', N'8328511625', N'gabriela_mendes@oas.com', CAST(N'1972-08-19' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (33341, N'Pietro Pietro Pires', CAST(29730295468 AS Numeric(11, 0)), N'326605769', N'7939808518', N'pietro-pires74@regional.com.br', CAST(N'1963-07-14' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (33361, N'Henry Bento Yago Jesus', CAST(93323898028 AS Numeric(11, 0)), N'336757232', N'5538726563', N'henry.bento.jesus@maliziaarranjosflorais.com.br', CAST(N'1963-05-16' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (33367, N'Aparecida Hadassa Barros', CAST(75295497402 AS Numeric(11, 0)), N'366140966', N'4137233073', N'aparecida.hadassa.barros@ruilacos.com.br', CAST(N'1957-02-13' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (34161, N'Hadassa Priscila Betina Souza', CAST(99088752052 AS Numeric(11, 0)), N'398845001', N'6139428794', N'hadassapriscilasouza@technicolor.com', CAST(N'1963-07-17' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (34425, N'Alana Lúcia Antônia da Mota', CAST(27645050861 AS Numeric(11, 0)), N'457026650', N'8428073035', N'alana.lucia.damota@hotrmail.com', CAST(N'1999-03-20' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (34466, N'Eduardo Benedito Corte Real', CAST(43883976873 AS Numeric(11, 0)), N'173714705', N'6838382272', N'eduardo_cortereal@chalu.com.br', CAST(N'1958-06-06' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (41177, N'Lucca Francisco da Cunha', CAST(35575719987 AS Numeric(11, 0)), N'333272419', N'6935103081', N'luccafranciscodacunha@zf.com', CAST(N'1947-07-11' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (43318, N'Agatha Isabel Drumond', CAST(75456713926 AS Numeric(11, 0)), N'361635618', N'6228505726', N'agathaisabeldrumond@comprehense.com.br', CAST(N'2006-05-11' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (44229, N'Victor Davi Juan Nascimento', CAST(86692102316 AS Numeric(11, 0)), N'308157382', N'9136275804', N'victor-nascimento82@reval.net', CAST(N'1995-04-10' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (44376, N'Ruan Kauê Alexandre dos Santos', CAST(60893499099 AS Numeric(11, 0)), N'240467826', N'6835150994', N'ruankauedossantos@eletrotex.com.br', CAST(N'1948-09-02' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (44463, N'Arthur Emanuel Moraes', CAST(68175930772 AS Numeric(11, 0)), N'103536383', N'9129739886', N'arthur-moraes77@hotmaill.com', CAST(N'1961-10-18' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (51143, N'Cristiane Laís Malu Assis', CAST(60512833826 AS Numeric(11, 0)), N'377527233', N'8125523297', N'cristiane_lais_assis@unimedrio.com.br', CAST(N'1981-03-13' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (51148, N'Lívia Débora Araújo', CAST(57559271545 AS Numeric(11, 0)), N'359075770', N'6129607442', N'livia_araujo@hydropowermc.com.br', CAST(N'1976-06-02' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (52280, N'Emilly Melissa Jéssica das Neves', CAST(36673083700 AS Numeric(11, 0)), N'442377824', N'6136518922', N'emilly_dasneves@wsiconsultores.com.br', CAST(N'1944-04-09' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (53377, N'Arthur Pietro Diego Figueiredo', CAST(38691831448 AS Numeric(11, 0)), N'383016666', N'3539347023', N'arthur_pietro_figueiredo@umbernardo.com.br', CAST(N'1947-06-05' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (54423, N'Simone Alícia Alves', CAST(96456591325 AS Numeric(11, 0)), N'484762023', N'9627583467', N'simonealiciaalves@click21.com.br', CAST(N'2001-05-21' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (54441, N'Yago Ian Cavalcanti', CAST(20479831181 AS Numeric(11, 0)), N'104595097', N'1227656471', N'yago-cavalcanti71@fransystems.com.br', CAST(N'1983-04-19' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (54467, N'Luzia Rita Caldeira', CAST(29116181301 AS Numeric(11, 0)), N'111792836', N'2726304975', N'luzia_caldeira@indaiamidias.com.br', CAST(N'1957-09-15' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (56675, N'Isis Sabrina Rocha', CAST(11836909080 AS Numeric(11, 0)), N'367903131', N'5138097583', N'isissabrinarocha@fluxioneventos.com.br', CAST(N'1949-07-07' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (61168, N'Maria Marina Viana', CAST(19238900698 AS Numeric(11, 0)), N'456941162', N'6127862864', N'maria_viana@oxiteno.com', CAST(N'1956-08-23' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (63359, N'Marcela Marlene Aragão', CAST(85295319229 AS Numeric(11, 0)), N'181986164', N'6727246208', N'marcela_aragao@novaface.com.br', CAST(N'1965-07-15' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (66448, N'Gael Manuel Silva', CAST(60275613860 AS Numeric(11, 0)), N'331624746', N'8229933964', N'gael-silva72@gmapst.com', CAST(N'1976-07-18' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (73239, N'Pedro Cláudio Bernardo Duarte', CAST(78142782790 AS Numeric(11, 0)), N'154624809', N'8938574210', N'pedroclaudioduarte@p4ed.com', CAST(N'1985-04-18' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (75525, N'Luana Nair Renata Ramos', CAST(66900852106 AS Numeric(11, 0)), N'359808670', N'8225972186', N'luana-ramos90@construtoraplaneta.com.br', CAST(N'1999-03-12' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (77778, N'Priscila Stefany Porto', CAST(43431605052 AS Numeric(11, 0)), N'142683978', N'3827221056', N'priscila.stefany.porto@commscope.com', CAST(N'1946-09-27' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (80811, N'Priscila Yasmin Moraes', CAST(56875761343 AS Numeric(11, 0)), N'250682631', N'8338811222', N'priscila_yasmin_moraes@rafaelsouza.com.br', CAST(N'1963-04-23' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (83334, N'César Vitor Fogaça', CAST(33159873862 AS Numeric(11, 0)), N'265522079', N'6328620671', N'cesar.vitor.fogaca@leandroreis.com', CAST(N'1990-03-19' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (84473, N'Evelyn Carolina da Rosa', CAST(20024472417 AS Numeric(11, 0)), N'489029693', N'8437793998', N'evelyn.carolina.darosa@audiogeni.com.br', CAST(N'1951-10-10' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (88949, N'Stella Renata Simone Moreira', CAST(66838243202 AS Numeric(11, 0)), N'276586323', N'8237295202', N'stella_renata_moreira@rodrigofranco.com', CAST(N'1975-02-18' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (91148, N'Sebastião Danilo Drumond', CAST(34447947110 AS Numeric(11, 0)), N'259665381', N'4126704996', N'sebastiaodanilodrumond@gripoantonin.com', CAST(N'1976-05-09' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (99023, N'Silvana Sarah da Cruz', CAST(39143460356 AS Numeric(11, 0)), N'200036774', N'8538520257', N'silvana_dacruz@abcturismo.com.br', CAST(N'2001-08-12' AS Date))
INSERT [dbo].[vitima] ([idVitima], [nome], [cpf], [rg], [telefone], [email], [datanasc]) VALUES (99933, N'Bruno Levi da Paz', CAST(73893248560 AS Numeric(11, 0)), N'334141382', N'6829033937', N'bruno_dapaz@marquesalcantra.comabdv.com.br', CAST(N'1991-07-16' AS Date))
GO
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (1,'Pistola9mm','Glock','Pistola');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (2,'FuzilM4','Colt','Fuzil');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (3,'Revolver.38','Smith&Wesson','Revolver');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (4,'Escopeta12','Remington','Escopeta');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (5,'SubmetralhadoraUzi','IsraelMilitary','Submetralhadora');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (6,'SniperM24','Remington','Sniper');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (7,'MetralhadoraM249','FNHerstal','Metralhadora');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (8,'PistolaGlock17','Glock','Pistola');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (9,'FuzilAK47','KalashnikovConcern','Fuzil');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (10,'Revolver.44Magnum','Smith&Wesson','Revolver');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (11,'EscopetaBenelliM4','Benelli','Escopeta');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (12,'SubmetralhadoraMP5','Heckler&Koch','Submetralhadora');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (13,'SniperAWM','AccuracyInt.','Sniper');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (14,'MetralhadoraM60','FNHerstal','Metralhadora');
INSERT INTO dbo.arma (idArma, descricao, fabricante, tipo) VALUES (15,'PistolaBeretta92','Beretta','Pistola');
GO
INSERT INTO [dbo].[ocorrencia] ([idOcorrencia], [descricao], [local], [data], [hora], [vitima], [bandidin], [policia], [arma])
VALUES
(1, 'Assalto a mão armada', 'Rua A', '2024-03-01', '12:30:00', 11119, 33325, 87720, 1),
(2, 'Roubo de veículo', 'Avenida B', '2024-03-02', '15:45:00', 11120, 33329, 87721, 2),
(3, 'Assassinato', 'Rua C', '2024-03-03', '21:00:00', 11122, 33334, 87741, 3),
(4, 'Furto em residência', 'Avenida D', '2024-03-04', '10:15:00', 11125, 33341, 87743, 4),
(5, 'Briga de gangues', 'Rua E', '2024-03-05', '18:20:00', 11127, 33343, 87752, 5),
(6, 'Sequestro relâmpago', 'Avenida F', '2024-03-06', '09:30:00', 11129, 33350, 87778, 6),
(7, 'Assalto a estabelecimento', 'Rua G', '2024-03-07', '14:55:00', 11134, 33354, 88825, 7),
(8, 'Homicídio culposo', 'Avenida H', '2024-03-08', '23:10:00', 11136, 33361, 88828, 8),
(9, 'Ameaça com arma de fogo', 'Rua I', '2024-03-09', '07:45:00', 11141, 33363, 88829, 9),
(10, 'Assalto a residência', 'Avenida J', '2024-03-10', '16:20:00', 11144, 33369, 88833, 10),
(11, 'Lesão corporal', 'Rua K', '2024-03-11', '12:05:00', 11148, 33372, 88834, 11),
(12, 'Tráfico de drogas', 'Avenida L', '2024-03-12', '19:30:00', 11150, 33378, 88840, 12),
(13, 'Fuga de prisão', 'Rua M', '2024-03-13', '04:50:00', 11153, 33392, 88843, 13),
(14, 'Agressão física', 'Avenida N', '2024-03-14', '11:15:00', 11155, 33463, 88848, 14),
(15, 'Roubo de celular', 'Rua O', '2024-03-15', '22:00:00', 11157, 33734, 88851, 15),
(16, 'Assalto a loja', 'Rua P', '2024-03-16', '13:40:00', 11158, 55518, 88852, 6),
(17, 'Roubo de veículo', 'Avenida Q', '2024-03-17', '17:25:00', 11159, 55521, 88854, 7),
(18, 'Homicídio doloso', 'Rua R', '2024-03-18', '20:10:00', 11160, 55523, 88858, 8),
(19, 'Ameaça com arma branca', 'Avenida S', '2024-03-19', '08:55:00', 11164, 55525, 88859, 9),
(20, 'Assalto a residência', 'Rua T', '2024-03-20', '14:30:00', 11166, 55526, 88861, 10),
(21, 'Lesão corporal', 'Avenida U', '2024-03-21', '09:15:00', 11168, 55527, 88862, 11),
(22, 'Tráfico de drogas', 'Rua V', '2024-03-22', '16:40:00', 11170, 55529, 88864, 12),
(23, 'Fuga de prisão', 'Avenida W', '2024-03-23', '05:05:00', 11172, 55534, 88872, 13),
(24, 'Agressão física', 'Rua X', '2024-03-24', '11:30:00', 11174, 55535, 88873, 14),
(25, 'Roubo de celular', 'Avenida Y', '2024-03-25', '22:15:00', 11178, 55536, 88876, 15),
(26, 'Assalto a mão armada', 'Rua Z', '2024-03-26', '12:45:00', 11218, 55540, 88878, 1),
(27, 'Roubo de veículo', 'Avenida AA', '2024-03-27', '15:50:00', 11241, 55541, 88879, 2),
(28, 'Assassinato', 'Rua BB', '2024-03-28', '21:30:00', 11242, 55542, 99932, 3),
(29, 'Furto em residência', 'Avenida CC', '2024-03-29', '10:00:00', 11254, 55543, 99949, 4),
(30, 'Briga de gangues', 'Rua DD', '2024-03-30', '18:45:00', 11257, 55546, 99952, 5),
(31, 'Sequestro relâmpago', 'Avenida EE', '2024-04-01', '09:55:00', 11258, 55553, 99949, 6),
(32, 'Assalto a estabelecimento', 'Rua FF', '2024-04-02', '15:10:00', 11259, 55554, 99952, 7),
(33, 'Homicídio culposo', 'Avenida GG', '2024-04-03', '23:45:00', 11348, 55555, 99933, 8),
(34, 'Ameaça com arma de fogo', 'Rua HH', '2024-04-04', '07:20:00', 11350, 55560, 87720, 9),
(35, 'Assalto a residência', 'Avenida II', '2024-04-05', '16:35:00', 11355, 55564, 87721, 10),
(36, 'Lesão corporal', 'Rua JJ', '2024-04-06', '12:10:00', 11374, 55565, 87741, 11),
(37, 'Tráfico de drogas', 'Avenida KK', '2024-04-07', '19:35:00', 12125, 55568, 87743, 12),
(38, 'Fuga de prisão', 'Rua LL', '2024-04-08', '04:00:00', 12220, 55572, 87752, 13),
(39, 'Agressão física', 'Avenida MM', '2024-04-09', '11:25:00', 12226, 55573, 87778, 14),
(40, 'Roubo de celular', 'Rua NN', '2024-04-10', '22:10:00', 12231, 55574, 88825, 15),
(41, 'Assalto a mão armada', 'Avenida OO', '2024-04-11', '12:50:00', 12233, 55576, 88828, 1),
(42, 'Roubo de veículo', 'Rua PP', '2024-04-12', '15:55:00', 12239, 55577, 88829, 2),
(43, 'Assassinato', 'Avenida QQ', '2024-04-13', '21:40:00', 12245, 55579, 88833, 3),
(44, 'Furto em residência', 'Rua RR', '2024-04-14', '10:05:00', 12267, 55580, 88834, 4),
(45, 'Briga de gangues', 'Avenida SS', '2024-04-15', '18:50:00', 12272, 55585, 88840, 5),
(46, 'Sequestro relâmpago', 'Rua TT', '2024-04-16', '09:40:00', 12275, 77726, 88851, 6),
(47, 'Assalto a estabelecimento', 'Avenida UU', '2024-04-17', '15:05:00', 19119, 77743, 88852, 7),
(48, 'Homicídio culposo', 'Rua VV', '2024-04-18', '23:20:00', 21120, 77752, 88854, 8),
(49, 'Ameaça com arma de fogo', 'Avenida WW', '2024-04-19', '08:05:00', 21125, 77776, 88858, 9),
(50, 'Assalto a residência', 'Rua XX', '2024-04-20', '14:30:00', 21126, 77777, 88859, 10),
(51, 'Lesão corporal', 'Avenida YY', '2024-04-21', '09:15:00', 21142, 99932, 88861, 11),
(52, 'Tráfico de drogas', 'Rua ZZ', '2024-04-22', '16:40:00', 21144, 99949, 88862, 12),
(53, 'Fuga de prisão', 'Avenida AAA', '2024-04-23', '05:05:00', 21148, 99952, 88864, 13),
(54, 'Agressão física', 'Rua BBB', '2024-04-24', '11:30:00', 21160, 55518, 88872, 14),
(55, 'Roubo de celular', 'Avenida CCC', '2024-04-25', '22:15:00', 21231, 55521, 88873, 15);
GO

ALTER TABLE [dbo].[ocorrencia]  WITH CHECK ADD  CONSTRAINT [FK_ocorrencia_arma] FOREIGN KEY([arma])
REFERENCES [dbo].[arma] ([idArma])
GO
ALTER TABLE [dbo].[ocorrencia] CHECK CONSTRAINT [FK_ocorrencia_arma]
GO
ALTER TABLE [dbo].[ocorrencia]  WITH CHECK ADD  CONSTRAINT [FK_ocorrencia_criminoso] FOREIGN KEY([bandidin])
REFERENCES [dbo].[criminoso] ([codigoCriminoso])
GO
ALTER TABLE [dbo].[ocorrencia] CHECK CONSTRAINT [FK_ocorrencia_criminoso]
GO
ALTER TABLE [dbo].[ocorrencia]  WITH CHECK ADD  CONSTRAINT [FK_ocorrencia_policial] FOREIGN KEY([policia])
REFERENCES [dbo].[policial] ([idPolicia])
GO
ALTER TABLE [dbo].[ocorrencia] CHECK CONSTRAINT [FK_ocorrencia_policial]
GO
ALTER TABLE [dbo].[ocorrencia]  WITH CHECK ADD  CONSTRAINT [FK_ocorrencia_vitima] FOREIGN KEY([vitima])
REFERENCES [dbo].[vitima] ([idVitima])
GO
ALTER TABLE [dbo].[ocorrencia] CHECK CONSTRAINT [FK_ocorrencia_vitima]
GO
