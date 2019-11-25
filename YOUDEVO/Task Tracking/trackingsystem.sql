USE [master]
GO
/****** Object:  Database [ProjectTracking]    Script Date: 25.11.2019 21:34:40 ******/
CREATE DATABASE [ProjectTracking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectTracking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProjectTracking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectTracking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProjectTracking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProjectTracking] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectTracking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectTracking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectTracking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectTracking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectTracking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectTracking] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectTracking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectTracking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectTracking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectTracking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectTracking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectTracking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectTracking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectTracking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectTracking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectTracking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectTracking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectTracking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectTracking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectTracking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectTracking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectTracking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectTracking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectTracking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectTracking] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectTracking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectTracking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectTracking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectTracking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectTracking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectTracking] SET QUERY_STORE = OFF
GO
USE [ProjectTracking]
GO
/****** Object:  Table [dbo].[Project_Log]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Log](
	[id] [char](20) NOT NULL,
	[log_name] [char](20) NOT NULL,
	[project_id] [char](20) NULL,
	[log_date] [char](20) NULL,
 CONSTRAINT [PK_Project_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Tasks]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Tasks](
	[id] [char](20) NOT NULL,
	[project_id] [char](20) NULL,
	[task_id] [char](20) NULL,
 CONSTRAINT [PK_Project_Tasks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Users]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Users](
	[id] [char](20) NOT NULL,
	[project_id] [char](20) NULL,
	[user_id] [char](20) NULL,
 CONSTRAINT [PK_Project_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[project_id] [char](20) NOT NULL,
	[project_name] [char](20) NULL,
	[project_sections] [char](20) NULL,
	[project_login_date] [char](20) NULL,
	[project_defination] [char](20) NULL,
	[project_due_date] [char](20) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section_Tasks]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section_Tasks](
	[section_id] [char](20) NOT NULL,
	[section_name] [char](20) NULL,
 CONSTRAINT [PK_Section_Tasks] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[task_id] [char](20) NOT NULL,
	[task_name] [char](20) NULL,
	[task_due_date] [char](20) NULL,
	[task_defination] [char](20) NULL,
	[task_section] [char](20) NULL,
	[task_channel] [char](20) NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[task_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team_Users]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team_Users](
	[id] [char](20) NOT NULL,
	[team_id] [char](20) NULL,
	[user_id] [char](20) NULL,
 CONSTRAINT [PK_Team_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[team_id] [char](20) NOT NULL,
	[team_name] [char](20) NULL,
	[team_users] [char](20) NULL,
	[team_login_date] [char](20) NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Tasks]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Tasks](
	[id] [char](20) NOT NULL,
	[user_id] [char](20) NULL,
	[task_id] [char](20) NULL,
 CONSTRAINT [PK_User_Tasks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25.11.2019 21:34:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [char](20) NOT NULL,
	[user_name] [char](20) NULL,
	[user_role] [char](20) NULL,
	[user_team] [char](20) NULL,
	[user_about] [char](20) NULL,
	[user_email] [char](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Project_Log]  WITH CHECK ADD  CONSTRAINT [FK_Project_Log_Projects] FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[Project_Log] CHECK CONSTRAINT [FK_Project_Log_Projects]
GO
ALTER TABLE [dbo].[Project_Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Project_Tasks_Projects] FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[Project_Tasks] CHECK CONSTRAINT [FK_Project_Tasks_Projects]
GO
ALTER TABLE [dbo].[Project_Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Project_Tasks_Tasks] FOREIGN KEY([task_id])
REFERENCES [dbo].[Tasks] ([task_id])
GO
ALTER TABLE [dbo].[Project_Tasks] CHECK CONSTRAINT [FK_Project_Tasks_Tasks]
GO
ALTER TABLE [dbo].[Project_Users]  WITH CHECK ADD  CONSTRAINT [FK_Project_Users_Projects] FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[Project_Users] CHECK CONSTRAINT [FK_Project_Users_Projects]
GO
ALTER TABLE [dbo].[Project_Users]  WITH CHECK ADD  CONSTRAINT [FK_Project_Users_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Project_Users] CHECK CONSTRAINT [FK_Project_Users_Users]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Section_Tasks] FOREIGN KEY([task_section])
REFERENCES [dbo].[Section_Tasks] ([section_id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Section_Tasks]
GO
ALTER TABLE [dbo].[Team_Users]  WITH CHECK ADD  CONSTRAINT [FK_Team_Users_Teams] FOREIGN KEY([team_id])
REFERENCES [dbo].[Teams] ([team_id])
GO
ALTER TABLE [dbo].[Team_Users] CHECK CONSTRAINT [FK_Team_Users_Teams]
GO
ALTER TABLE [dbo].[Team_Users]  WITH CHECK ADD  CONSTRAINT [FK_Team_Users_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Team_Users] CHECK CONSTRAINT [FK_Team_Users_Users]
GO
ALTER TABLE [dbo].[User_Tasks]  WITH CHECK ADD  CONSTRAINT [FK_User_Tasks_Tasks] FOREIGN KEY([task_id])
REFERENCES [dbo].[Tasks] ([task_id])
GO
ALTER TABLE [dbo].[User_Tasks] CHECK CONSTRAINT [FK_User_Tasks_Tasks]
GO
ALTER TABLE [dbo].[User_Tasks]  WITH CHECK ADD  CONSTRAINT [FK_User_Tasks_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[User_Tasks] CHECK CONSTRAINT [FK_User_Tasks_Users]
GO
USE [master]
GO
ALTER DATABASE [ProjectTracking] SET  READ_WRITE 
GO
