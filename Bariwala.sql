USE [master]
GO
/****** Object:  Database [BariwalaLocalDB]    Script Date: 8/21/2021 4:29:35 PM ******/
CREATE DATABASE [BariwalaLocalDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BariwalaLocalDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BariwalaLocalDB.mdf' , SIZE = 102400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BariwalaLocalDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BariwalaLocalDB_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BariwalaLocalDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BariwalaLocalDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BariwalaLocalDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BariwalaLocalDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BariwalaLocalDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BariwalaLocalDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BariwalaLocalDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BariwalaLocalDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BariwalaLocalDB] SET  MULTI_USER 
GO
ALTER DATABASE [BariwalaLocalDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BariwalaLocalDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BariwalaLocalDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BariwalaLocalDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BariwalaLocalDB]
GO
/****** Object:  Table [dbo].[AssigneeFlatDetails]    Script Date: 8/21/2021 4:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssigneeFlatDetails](
	[assigneeFlatId] [varchar](255) NOT NULL,
	[assigneeTenantId] [int] NULL,
	[flatDetails] [int] NULL,
 CONSTRAINT [PK_AssigneeFlatDetails] PRIMARY KEY CLUSTERED 
(
	[assigneeFlatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FlatDetails]    Script Date: 8/21/2021 4:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FlatDetails](
	[flatDetailsId] [int] NOT NULL,
	[flatNumber] [varchar](255) NOT NULL,
	[flatLocation] [varchar](255) NOT NULL,
	[flatBedRoom] [int] NOT NULL,
	[flatDinningRoom] [int] NOT NULL,
	[flatDrawingRoom] [int] NOT NULL,
	[flatWashRoom] [int] NOT NULL,
	[flatKitchen] [int] NOT NULL,
	[flatBalcony] [int] NOT NULL,
	[flatMonthlyGasCharge] [decimal](18, 0) NOT NULL,
	[flatMonthlyWaterCharge] [decimal](18, 0) NOT NULL,
	[flatMonthlyElectricCharge] [decimal](18, 0) NOT NULL,
	[flatMonthlyUtilities] [decimal](18, 0) NOT NULL,
	[flatOwnerId] [int] NULL,
	[flatMonthlyRent] [decimal](18, 0) NOT NULL,
	[flatSize] [int] NOT NULL,
 CONSTRAINT [PK_FlatDetails] PRIMARY KEY CLUSTERED 
(
	[flatDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionHistory]    Script Date: 8/21/2021 4:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransactionHistory](
	[invoiceId] [int] NOT NULL,
	[tenantName] [varchar](255) NULL,
	[tenantPhoneNumber] [varchar](255) NULL,
	[flatNumber] [varchar](255) NULL,
	[flatLocation] [varchar](255) NULL,
	[flatMonthlyRent] [decimal](18, 0) NULL,
	[flatGasCharge] [decimal](18, 0) NULL,
	[flatWaterCharge] [decimal](18, 0) NULL,
	[flatElectricCharge] [decimal](18, 0) NULL,
	[flatUtilitiesCharge] [decimal](18, 0) NULL,
	[flatOtherCharge] [decimal](18, 0) NULL,
	[billingDate] [varchar](50) NULL,
	[flatTotalAmount] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInformations]    Script Date: 8/21/2021 4:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInformations](
	[userID] [int] NOT NULL,
	[userName] [varchar](255) NOT NULL,
	[userFullName] [varchar](255) NOT NULL,
	[userMailAddress] [varchar](255) NOT NULL,
	[userPhoneNumber] [varchar](20) NOT NULL,
	[userPassword] [varchar](255) NOT NULL,
	[userType] [varchar](255) NOT NULL,
	[userDOB] [varchar](50) NOT NULL,
	[userSecretCode] [varchar](255) NOT NULL,
	[userAddress] [varchar](300) NOT NULL,
	[activeStatus] [varchar](255) NULL,
	[userPic] [varbinary](max) NULL,
 CONSTRAINT [PK_UserInformations] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AssigneeFlatDetails]  WITH CHECK ADD  CONSTRAINT [FK_AssigneeFlatDetails_FlatDetails] FOREIGN KEY([flatDetails])
REFERENCES [dbo].[FlatDetails] ([flatDetailsId])
GO
ALTER TABLE [dbo].[AssigneeFlatDetails] CHECK CONSTRAINT [FK_AssigneeFlatDetails_FlatDetails]
GO
ALTER TABLE [dbo].[AssigneeFlatDetails]  WITH CHECK ADD  CONSTRAINT [FK_AssigneeFlatDetails_UserInformations] FOREIGN KEY([assigneeTenantId])
REFERENCES [dbo].[UserInformations] ([userID])
GO
ALTER TABLE [dbo].[AssigneeFlatDetails] CHECK CONSTRAINT [FK_AssigneeFlatDetails_UserInformations]
GO
ALTER TABLE [dbo].[FlatDetails]  WITH CHECK ADD  CONSTRAINT [FK_FlatDetails_UserInformations] FOREIGN KEY([flatOwnerId])
REFERENCES [dbo].[UserInformations] ([userID])
GO
ALTER TABLE [dbo].[FlatDetails] CHECK CONSTRAINT [FK_FlatDetails_UserInformations]
GO
USE [master]
GO
ALTER DATABASE [BariwalaLocalDB] SET  READ_WRITE 
GO
