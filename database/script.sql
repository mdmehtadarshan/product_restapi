USE [master]
GO
/****** Object:  Database [restapi_react_prodb]    Script Date: 31-12-2021 09:13:32 ******/
CREATE DATABASE [restapi_react_prodb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restapi_react_prodb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\restapi_react_prodb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'restapi_react_prodb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\restapi_react_prodb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [restapi_react_prodb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restapi_react_prodb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [restapi_react_prodb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET ARITHABORT OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [restapi_react_prodb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [restapi_react_prodb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [restapi_react_prodb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [restapi_react_prodb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [restapi_react_prodb] SET  MULTI_USER 
GO
ALTER DATABASE [restapi_react_prodb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [restapi_react_prodb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [restapi_react_prodb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [restapi_react_prodb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [restapi_react_prodb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [restapi_react_prodb] SET QUERY_STORE = OFF
GO
USE [restapi_react_prodb]
GO
/****** Object:  Table [dbo].[pro_category]    Script Date: 31-12-2021 09:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_category](
	[cat_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[cat_nm] [varchar](50) NOT NULL,
	[a_ia] [bit] NOT NULL,
	[description] [varchar](250) NOT NULL,
 CONSTRAINT [PK_pro_category] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 31-12-2021 09:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[pro_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[pro_nm] [varchar](50) NOT NULL,
	[cat_id] [varchar](25) NOT NULL,
	[cost] [float] NOT NULL,
	[description] [varchar](250) NOT NULL,
	[a_ia] [bit] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [restapi_react_prodb] SET  READ_WRITE 
GO
