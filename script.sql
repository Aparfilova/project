USE [master]
GO
/****** Object:  Database [Zayavleniya]    Script Date: 15.10.2020 15:04:48 ******/
CREATE DATABASE [Zayavleniya]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Zayavleniya', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Zayavleniya.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Zayavleniya_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Zayavleniya_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Zayavleniya] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Zayavleniya].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Zayavleniya] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Zayavleniya] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Zayavleniya] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Zayavleniya] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Zayavleniya] SET ARITHABORT OFF 
GO
ALTER DATABASE [Zayavleniya] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Zayavleniya] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Zayavleniya] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Zayavleniya] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Zayavleniya] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Zayavleniya] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Zayavleniya] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Zayavleniya] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Zayavleniya] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Zayavleniya] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Zayavleniya] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Zayavleniya] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Zayavleniya] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Zayavleniya] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Zayavleniya] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Zayavleniya] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Zayavleniya] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Zayavleniya] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Zayavleniya] SET  MULTI_USER 
GO
ALTER DATABASE [Zayavleniya] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Zayavleniya] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Zayavleniya] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Zayavleniya] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Zayavleniya] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Zayavleniya] SET QUERY_STORE = OFF
GO
USE [Zayavleniya]
GO
/****** Object:  Table [dbo].[ПриемнаяКомиссия]    Script Date: 15.10.2020 15:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ПриемнаяКомиссия](
	[Должность] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Факультет]    Script Date: 15.10.2020 15:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Факультет](
	[НазваниеФакультета] [varchar](255) NULL,
	[НомерФакультета] [int] NULL,
	[Декан] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Абитуриент]    Script Date: 15.10.2020 15:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абитуриент](
	[КодАбитуриента] [int] NOT NULL,
	[Фамилия] [varchar](255) NULL,
	[Имя] [varchar](255) NULL,
	[Отчество] [varchar](255) NULL,
	[Возраст] [int] NULL,
	[Город] [varchar](255) NULL,
	[Адрес] [varchar](255) NULL,
 CONSTRAINT [PK_Абитуриент] PRIMARY KEY CLUSTERED 
(
	[КодАбитуриента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Специальность]    Script Date: 15.10.2020 15:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Специальность](
	[НомерСпециальности] [int] NOT NULL,
	[ФормаОбучения] [varchar](50) NULL,
	[Наименованин] [varchar](50) NULL,
	[СрокОбучения] [int] NULL,
 CONSTRAINT [PK_Специальность] PRIMARY KEY CLUSTERED 
(
	[НомерСпециальности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявление]    Script Date: 15.10.2020 15:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявление](
	[ПорядковыйНомер] [int] NOT NULL,
	[ДатаПодачи] [date] NULL,
	[ТипЗаявления] [varchar](50) NULL,
	[Приоритет] [int] NULL,
	[Специальность] [varchar](255) NULL,
	[Абитуриент] [varchar](255) NULL,
 CONSTRAINT [PK_Заявление] PRIMARY KEY CLUSTERED 
(
	[ПорядковыйНомер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 15.10.2020 15:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        dbo.Специальность.Наименованин
FROM            dbo.Абитуриент INNER JOIN
                         dbo.Заявление ON dbo.Абитуриент.Фамилия = dbo.Заявление.Абитуриент INNER JOIN
                         dbo.Специальность ON dbo.Заявление.Специальность = dbo.Специальность.Наименованин CROSS JOIN
                         dbo.ПриемнаяКомиссия CROSS JOIN
                         dbo.Факультет
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Абитуриент"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 220
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Заявление"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 206
               Right = 453
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "ПриемнаяКомиссия"
            Begin Extent = 
               Top = 6
               Left = 491
               Bottom = 85
               Right = 665
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Специальность"
            Begin Extent = 
               Top = 6
               Left = 703
               Bottom = 136
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Факультет"
            Begin Extent = 
               Top = 6
               Left = 954
               Bottom = 119
               Right = 1157
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [Zayavleniya] SET  READ_WRITE 
GO
