USE [master]
GO
/****** Object:  Database [DbEducationalInstitution]    Script Date: 29.01.2022 20:34:38 ******/
CREATE DATABASE [DbEducationalInstitution]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbEducationalInstitution', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DbEducationalInstitution.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbEducationalInstitution_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DbEducationalInstitution_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DbEducationalInstitution] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbEducationalInstitution].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbEducationalInstitution] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbEducationalInstitution] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbEducationalInstitution] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbEducationalInstitution] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbEducationalInstitution] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbEducationalInstitution] SET  MULTI_USER 
GO
ALTER DATABASE [DbEducationalInstitution] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbEducationalInstitution] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbEducationalInstitution] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbEducationalInstitution] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbEducationalInstitution] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbEducationalInstitution] SET QUERY_STORE = OFF
GO
USE [DbEducationalInstitution]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DbEducationalInstitution]
GO
/****** Object:  Table [dbo].[tbl_Assistants]    Script Date: 29.01.2022 20:34:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Assistants](
	[Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Assistants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Contacts]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Linkedin] [nvarchar](500) NULL,
	[GithubUserName] [nvarchar](500) NULL,
	[Phone] [char](11) NULL,
	[StackOverflowAddress] [nvarchar](500) NULL,
	[HackerRankAddress] [nvarchar](500) NULL,
	[Twitter] [nvarchar](500) NULL,
 CONSTRAINT [PK_tbl_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Contents]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Contents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Video] [nvarchar](500) NULL,
	[Writing] [nvarchar](max) NULL,
	[LessonId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Contents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Educations]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Educations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Definition] [nvarchar](500) NOT NULL,
	[PointAmount] [smallint] NULL,
	[LessonTime] [smallint] NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
 CONSTRAINT [PK_tbl_Educations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_EducationUsers]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EducationUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EducationId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_EducationInstructors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Instructor]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Instructor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Instructor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Lessons]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Lessons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[EducationId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Lessons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Participants]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Participants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Participants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Process]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Process](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Process] [float] NULL,
	[StudentId] [int] NULL,
 CONSTRAINT [PK_tbl_Process] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Roles]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](40) NOT NULL,
 CONSTRAINT [PK_tbl_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RollCalls]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RollCalls](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RollCallControl] [bit] NOT NULL,
	[Duration] [int] NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_RollCalls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Students]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Process] [int] NULL,
 CONSTRAINT [PK_tbl_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 29.01.2022 20:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NOT NULL,
	[Surname] [nvarchar](30) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[ContactId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Assistants]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Assistants_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Assistants] CHECK CONSTRAINT [FK_tbl_Assistants_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Contents]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Contents_tbl_Lessons] FOREIGN KEY([LessonId])
REFERENCES [dbo].[tbl_Lessons] ([Id])
GO
ALTER TABLE [dbo].[tbl_Contents] CHECK CONSTRAINT [FK_tbl_Contents_tbl_Lessons]
GO
ALTER TABLE [dbo].[tbl_EducationUsers]  WITH CHECK ADD  CONSTRAINT [FK_tbl_EducationUsers_tbl_Educations] FOREIGN KEY([EducationId])
REFERENCES [dbo].[tbl_Educations] ([Id])
GO
ALTER TABLE [dbo].[tbl_EducationUsers] CHECK CONSTRAINT [FK_tbl_EducationUsers_tbl_Educations]
GO
ALTER TABLE [dbo].[tbl_EducationUsers]  WITH CHECK ADD  CONSTRAINT [FK_tbl_EducationUsers_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_EducationUsers] CHECK CONSTRAINT [FK_tbl_EducationUsers_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Instructor]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Instructor_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Instructor] CHECK CONSTRAINT [FK_tbl_Instructor_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Lessons]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Lessons_tbl_Educations] FOREIGN KEY([EducationId])
REFERENCES [dbo].[tbl_Educations] ([Id])
GO
ALTER TABLE [dbo].[tbl_Lessons] CHECK CONSTRAINT [FK_tbl_Lessons_tbl_Educations]
GO
ALTER TABLE [dbo].[tbl_Participants]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Participants_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Participants] CHECK CONSTRAINT [FK_tbl_Participants_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Process]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Process_tbl_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[tbl_Students] ([Id])
GO
ALTER TABLE [dbo].[tbl_Process] CHECK CONSTRAINT [FK_tbl_Process_tbl_Students]
GO
ALTER TABLE [dbo].[tbl_RollCalls]  WITH CHECK ADD  CONSTRAINT [FK_tbl_RollCalls_tbl_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[tbl_Students] ([Id])
GO
ALTER TABLE [dbo].[tbl_RollCalls] CHECK CONSTRAINT [FK_tbl_RollCalls_tbl_Students]
GO
ALTER TABLE [dbo].[tbl_Students]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Students_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Students] CHECK CONSTRAINT [FK_tbl_Students_tbl_User]
GO
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_tbl_Contacts] FOREIGN KEY([ContactId])
REFERENCES [dbo].[tbl_Contacts] ([Id])
GO
ALTER TABLE [dbo].[tbl_User] CHECK CONSTRAINT [FK_tbl_User_tbl_Contacts]
GO
ALTER TABLE [dbo].[tbl_User]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_tbl_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_Roles] ([Id])
GO
ALTER TABLE [dbo].[tbl_User] CHECK CONSTRAINT [FK_tbl_User_tbl_Roles]
GO
USE [master]
GO
ALTER DATABASE [DbEducationalInstitution] SET  READ_WRITE 
GO
