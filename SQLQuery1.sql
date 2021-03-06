USE [master]
GO
/****** Object:  Database [Balraj_Pateint_SyetemDB]    Script Date: 12-07-2020 12:48:38 AM ******/
CREATE DATABASE [Balraj_Pateint_SyetemDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Balraj_Pateint_SyetemDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Balraj_Pateint_SyetemDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Balraj_Pateint_SyetemDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Balraj_Pateint_SyetemDB_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Balraj_Pateint_SyetemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET  MULTI_USER 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Balraj_Pateint_SyetemDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12-07-2020 12:48:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 12-07-2020 12:48:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DoctorID] [int] NOT NULL,
	[Timing] [nvarchar](max) NULL,
	[AppointmentDate] [nvarchar](max) NULL,
	[PatientID] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 12-07-2020 12:48:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationNumber] [nvarchar](max) NULL,
	[DoctorName] [nvarchar](max) NULL,
	[Qualification] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Experience] [nvarchar](max) NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patient]    Script Date: 12-07-2020 12:48:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationNumber] [nvarchar](max) NULL,
	[PatientName] [nvarchar](max) NULL,
	[FatherName] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[HealthIssue] [nvarchar](max) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200711183643_Init', N'3.1.5')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200711183912_Init1', N'3.1.5')
GO
SET IDENTITY_INSERT [dbo].[Appointments] ON 

GO
INSERT [dbo].[Appointments] ([ID], [DoctorID], [Timing], [AppointmentDate], [PatientID]) VALUES (1, 1, N'1:00PM', N'21 july 2020', 1)
GO
SET IDENTITY_INSERT [dbo].[Appointments] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctors] ON 

GO
INSERT [dbo].[Doctors] ([ID], [RegistrationNumber], [DoctorName], [Qualification], [Address], [PhoneNumber], [Experience]) VALUES (1, N'1234', N'Satam', N'Md', N'asdf', N'1223232312', N'5')
GO
SET IDENTITY_INSERT [dbo].[Doctors] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

GO
INSERT [dbo].[Patient] ([ID], [RegistrationNumber], [PatientName], [FatherName], [Age], [Address], [HealthIssue]) VALUES (1, N'121', N'Aman', N'saman', 21, N'qwerty', N'asdf')
GO
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
/****** Object:  Index [IX_Appointments_DoctorID]    Script Date: 12-07-2020 12:48:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_Appointments_DoctorID] ON [dbo].[Appointments]
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Appointments_PatientID]    Script Date: 12-07-2020 12:48:38 AM ******/
CREATE NONCLUSTERED INDEX [IX_Appointments_PatientID] ON [dbo].[Appointments]
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Doctors_DoctorID] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctors] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Doctors_DoctorID]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Patient_PatientID] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Patient_PatientID]
GO
USE [master]
GO
ALTER DATABASE [Balraj_Pateint_SyetemDB] SET  READ_WRITE 
GO
