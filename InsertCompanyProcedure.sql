USE [LogoDb]
GO
/****** Object:  StoredProcedure [dbo].[InsertCompany]    Script Date: 28.03.2022 02:24:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertCompany]
	@companyName NVARCHAR (50),
	@numberOfEmployees INT,
	@location NVARCHAR (50),
	@phone NVARCHAR (30),
	@email NVARCHAR (50),
	@founderName NVARCHAR (100)

AS

	INSERT INTO Company(Company.companyName, numberOfEmployees, location ,phone, email, founderName)
	VALUES(@companyName, @numberOfEmployees, @location ,@phone, @email, @founderName)

GO
