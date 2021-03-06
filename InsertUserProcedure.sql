USE [LogoDb]
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 28.03.2022 02:25:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertUser] 
	@firstName NVARCHAR (50),
	@lastName NVARCHAR (50),
	@phone NVARCHAR (30),
	@email NVARCHAR (100),
	@createdDate DATE,
	@password NVARCHAR (15),
	@isActive BIT

AS

	INSERT INTO Users(Users.firstName, lastName, phone, email, createdDate, password, isActive)
	VALUES(@firstName, @lastName, @phone, @email, @createdDate, @password, @isActive )

GO
