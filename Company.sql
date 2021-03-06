USE [LogoDb]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 28.03.2022 02:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[companyID] [int] IDENTITY(1,1) NOT NULL,
	[companyName] [nvarchar](100) NOT NULL,
	[numberOfEmployees] [int] NOT NULL,
	[location] [nvarchar](50) NOT NULL,
	[phone] [varchar](30) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[founderName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([companyID], [companyName], [numberOfEmployees], [location], [phone], [email], [founderName]) VALUES (1, N'İnci Yazılım', 1000, N'Ankara', N'1111111111', N'inci.kilic@outlook.com', N'İnci Kılıç')
INSERT [dbo].[Company] ([companyID], [companyName], [numberOfEmployees], [location], [phone], [email], [founderName]) VALUES (2, N'Nilay Yazılım', 100, N'Ankara', N'2222222222', N'nilay.kilic@outlook.com', N'Nilay Kılıç')
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Users] FOREIGN KEY([companyID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Users]
GO
