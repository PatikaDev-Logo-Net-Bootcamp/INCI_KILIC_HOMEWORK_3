USE [LogoDb]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.03.2022 02:22:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](30) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[createdDate] [date] NOT NULL,
	[password] [nvarchar](15) NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userID], [firstName], [lastName], [phone], [email], [createdDate], [password], [isActive]) VALUES (1, N'İnci', N'Kılıç', N'1111111111', N'inci.kilic@outlook.com', CAST(N'2022-03-28' AS Date), N'123456', 1)
INSERT [dbo].[Users] ([userID], [firstName], [lastName], [phone], [email], [createdDate], [password], [isActive]) VALUES (2, N'Nilay', N'Kılıç', N'2222222222', N'nilay.kilic@outlook.com', CAST(N'2022-03-28' AS Date), N'456789', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
