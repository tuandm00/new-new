USE [master]
GO
/****** Object:  Database [UserManagement]    Script Date: 06/11/2021 08:41:01 ******/
CREATE DATABASE [UserManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UserManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\UserManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UserManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\UserManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UserManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UserManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UserManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UserManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UserManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UserManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UserManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [UserManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UserManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UserManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UserManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UserManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UserManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UserManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UserManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UserManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UserManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UserManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UserManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UserManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UserManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UserManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UserManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UserManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UserManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [UserManagement] SET  MULTI_USER 
GO
ALTER DATABASE [UserManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UserManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UserManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UserManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UserManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UserManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'UserManagement', N'ON'
GO
ALTER DATABASE [UserManagement] SET QUERY_STORE = OFF
GO
USE [UserManagement]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 06/11/2021 08:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[userID] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[photo] [nvarchar](50) NULL,
	[password] [nvarchar](500) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'tuan', N'AD', N'Minh Tuan', N'tuan@gmail.com', N'111111111', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'dat', N'US', N'Quoc Dat', N'dat@gmail.com', N'222222222', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'bao', N'US', N'Duy Bao', N'bao@gmail.com', N'333333333', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'nguyen', N'US', N'Khoi Nguyen', N'nguyen@gmail.com', N'444444444', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'sang', N'US', N'Dang Sang', N'sang@gmail.com', N'555555555', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'cuong', N'US', N'Chi Cuong', N'cuong@gmai.com', N'666666666', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'khang', N'US', N'Ngoc Khang', N'khang@gmail.com', N'777777777', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'thanh', N'US', N'Tong Thanh', N'thanh@gmail.com', N'888888888', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'thi', N'US', N'Kha Thi', N'thi@gmail.com', N'999999999', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'long', N'US', N'Thang Long', N'long@gmail.com', N'1010101010', N'Photo.jpg', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b')
INSERT [dbo].[tbl_Users] ([userID], [roleID], [fullname], [email], [phone], [photo], [password]) VALUES (N'a', N'US', N'bbbbbbb', N'bbbbbbbbb', N'bbbbbbb', N'Photo.jpg', N'e0bc614e4fd035a488619799853b075143deea596c477b8dc077e309c0fe42e9')
GO
USE [master]
GO
ALTER DATABASE [UserManagement] SET  READ_WRITE 
GO
