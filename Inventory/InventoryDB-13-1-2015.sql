USE [Inventory]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Description] [nvarchar](250) NULL,
	[ParentCotegory_ID] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessDetails]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Services] [nvarchar](50) NULL,
	[FinancialYearFrom] [date] NULL,
	[BookBeginingFrom] [date] NULL,
	[CurrencySymbol] [nvarchar](50) NULL,
	[CurrencyChar] [nvarchar](50) NULL,
	[AgreeTermsAndCondition] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_BusinessDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](50) NULL,
	[IFSCCode] [nvarchar](max) NULL,
	[Branch] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContraEntries]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContraEntries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentDate] [date] NULL,
	[FromCashAccount] [nvarchar](50) NULL,
	[FromBankAccount] [nvarchar](50) NULL,
	[ToCashAccount] [nvarchar](50) NULL,
	[ToBankAccount] [nvarchar](50) NULL,
	[Amount] [float] NULL,
	[Note] [nvarchar](250) NULL,
 CONSTRAINT [PK_ContraEntries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Discription] [nvarchar](150) NULL,
	[Amount] [int] NULL,
	[Date] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Expenses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [nvarchar](max) NULL,
	[AccountName] [nvarchar](50) NULL,
	[Bank] [nvarchar](150) NULL,
	[Organisation_ID] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_BankAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForgetPasswords]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForgetPasswords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NULL,
	[OldPassword] [nvarchar](50) NULL,
	[NewPassword] [nvarchar](50) NULL,
	[ConfirmPassword] [nvarchar](50) NULL,
	[UpdatedDate] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ForgetPasswords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organisation]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrganisationName] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[DeletedDate] [datetime] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Organisation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReorderItems] [int] NULL,
	[OverdueCustomers] [int] NULL,
	[OuverdueSuppliers] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [nvarchar](50) NULL,
	[ChequeNumber] [nvarchar](50) NULL,
	[PaymentDate] [date] NULL,
	[TotalAmount] [float] NULL,
	[PaidAmount] [float] NULL,
	[BalanceAmount] [float] NULL,
	[DepositeDate] [date] NULL,
	[DepositeTo] [nvarchar](50) NULL,
	[BankName] [nvarchar](50) NULL,
	[Note] [nvarchar](150) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewStockItem]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewStockItem](
	[NewStocks_Id] [int] NOT NULL,
	[NewStocks_SupplierName] [int] NOT NULL,
	[NewStocks_Date] [int] NOT NULL,
	[NewStocks_City] [int] NOT NULL,
	[NewStocks_Note] [int] NOT NULL,
	[NewStocks_TotalQuantity] [int] NOT NULL,
	[Items_Id] [int] NOT NULL,
 CONSTRAINT [PK_NewStockItem] PRIMARY KEY CLUSTERED 
(
	[NewStocks_Id] ASC,
	[NewStocks_SupplierName] ASC,
	[NewStocks_Date] ASC,
	[NewStocks_City] ASC,
	[NewStocks_Note] ASC,
	[NewStocks_TotalQuantity] ASC,
	[Items_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameOfMenu] [nvarchar](50) NULL,
	[CreatedDate] [date] NULL,
	[UpdatedDate] [date] NULL,
	[DeletedDate] [date] NULL,
	[Deleted] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogIns]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogIns](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[ConfirmPassword] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatesDate] [datetime] NULL,
	[DeletedDate] [datetime] NULL,
	[Deleted] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_LogIns] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameOfLanuguages] [nvarchar](50) NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taxes]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taxes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[TaxValue] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Taxes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[City_ID] [int] NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[ContactNumber2] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[EmailID2] [nvarchar](50) NULL,
	[VATNumber] [nvarchar](50) NULL,
	[TINNumber] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[Area] [nvarchar](50) NULL,
	[Pincode] [nvarchar](10) NULL,
	[Note] [nvarchar](150) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Percentage]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Percentage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfitPercentage] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Percentage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockInHands]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockInHands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](250) NULL,
	[Unit] [int] NULL,
	[SalesPrice] [int] NULL,
	[CurrentStock] [int] NULL,
 CONSTRAINT [PK_StockInHands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleOfUsers]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleOfUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameOfUserRole] [nvarchar](50) NULL,
	[CreatedDate] [date] NULL,
	[UpdatedDate] [date] NULL,
	[DeletedDate] [date] NULL,
	[Delete] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_RoleOfUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Country]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Country]
AS
SELECT     ID, CountryName, Status
FROM         dbo.Country
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
         Begin Table = "Country"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 191
               Right = 227
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Country'
GO
/****** Object:  View [dbo].[View_Unit]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Unit]
AS
SELECT     ID, Name, Description, Status
FROM         dbo.Unit
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[14] 3) )"
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
         Begin Table = "Unit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 190
               Right = 243
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Unit'
GO
/****** Object:  View [dbo].[View_Role]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Role]
AS
SELECT     Id, NameOfUserRole, CreatedDate, UpdatedDate, DeletedDate, [Delete]
FROM         dbo.RoleOfUsers
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
         Begin Table = "RoleOfUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 209
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
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Role'
GO
/****** Object:  Table [dbo].[Services]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[SalesPrice] [int] NULL,
	[PurchasePrice] [int] NULL,
	[Unit] [int] NULL,
	[Category_ID] [int] NULL,
	[PurchaseTax_ID] [int] NULL,
	[SalesTax_ID] [int] NULL,
	[AllowSales] [bit] NULL,
	[AllowPurchase] [bit] NULL,
	[Description] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuantityAndPrice]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuantityAndPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Id] [int] NULL,
	[CostPrice] [int] NULL,
	[SalsePrice] [int] NULL,
	[ProfitPercentage] [int] NULL,
	[BatchNumber] [int] NULL,
	[ManuFacturingDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[Unit_Id] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_QuantityAndPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[Country_ID] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_ExpensesReport]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ExpensesReport]
@startDate datetime,
@endDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	Declare @ExpensesDate date
	Declare @ExpensesName nvarchar(200)
	Declare @Amount float
	Declare @TotalAmount float
	Declare @count int
	Declare @i int
	Set @i=1
	Declare @ExpensesReport Table (ExpensesDate datetime,ExpensesName nvarchar(200),Amount float)
	
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 WHILE CONVERT(VARCHAR(10), @startDate, 120) <=  CONVERT(VARCHAR(10), @endDate, 120)                
			Begin
			IF EXISTS (select * from Expenses where Date= @startDate )
					BEGIN										
				               
				               select @Count=COUNT(*)  from Expenses where Date= @startDate ;
											IF @Count=1
												BEGIN
												
													select top(5) @ExpensesDate=Date,@ExpensesName=Discription,@Amount=Amount from Expenses  where Date= @startDate
														 insert into  @ExpensesReport
														  (ExpensesDate ,ExpensesName ,Amount )    
														  values
														  (@ExpensesDate,@ExpensesName,@Amount)  
				             -- print 'y'
														  
												End
											Else
												BEGIN
												
													while CONVERT(int,@i)<=CONVERT(int,@Count)
														BEGIN
															  select top(@i) @ExpensesDate=Date,@ExpensesName=Discription,@Amount=Amount from Expenses  where Date= @startDate
															 insert into  @ExpensesReport
															  (ExpensesDate ,ExpensesName ,Amount )    
															  values
															  (@ExpensesDate,@ExpensesName,@Amount) 
				           --   print 'n'
															select @i=@i+1  
														END
														  
												END
												
				               
									   
					END
				set @startDate=DateAdd(day, 1, @startDate)	-- Get next day     
					
			End	
					
				              
	--select * from @ExpensesReport
		select @TotalAmount=SUM(Amount) from @ExpensesReport 
							insert into  @ExpensesReport
				              (ExpensesDate ,ExpensesName ,Amount )    
				              values
				              (Null,'Total',@TotalAmount) 
				              
	select * from @ExpensesReport
			
--  RETURN    
 
				              
	
END
GO
/****** Object:  Table [dbo].[PaymentSupplier]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentSupplier](
	[Payments_Id] [int] NOT NULL,
	[Suppliers_Id] [int] NOT NULL,
 CONSTRAINT [PK_PaymentSupplier] PRIMARY KEY CLUSTERED 
(
	[Payments_Id] ASC,
	[Suppliers_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierPayments]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierPayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Supplier_ID] [int] NULL,
	[PaymentType] [nvarchar](150) NULL,
	[ChequeNumber] [nvarchar](150) NULL,
	[PaymentDate] [date] NULL,
	[TotalAmount] [float] NULL,
	[PaidAmount] [float] NULL,
	[BalanceAmount] [float] NULL,
	[IssueDate] [date] NULL,
	[DepositeDate] [date] NULL,
	[DepositeTo] [nvarchar](50) NULL,
	[BankName] [nvarchar](150) NULL,
	[Note] [nvarchar](250) NULL,
	[ChequeStatus] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SupplierPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Categories]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Categories]
AS
SELECT     Id, Name, Description, Status, ParentCotegory_ID
FROM         dbo.Categories
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
         Begin Table = "Categories"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 215
               Right = 221
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Categories'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Categories'
GO
/****** Object:  View [dbo].[View_Banks]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Banks]
AS
SELECT     Id, BankName, IFSCCode, Branch, Status
FROM         dbo.Banks
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
         Begin Table = "Banks"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Banks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Banks'
GO
/****** Object:  View [dbo].[View_Bank_Accounts]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Bank_Accounts]
AS
SELECT     Id, AccountNumber, AccountName, Bank, Organisation_ID, Status
FROM         dbo.BankAccounts
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
         Begin Table = "BankAccounts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Bank_Accounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Bank_Accounts'
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Role_ID] [int] NULL,
	[Company_ID] [int] NULL,
	[ContactNumber] [nvarchar](20) NULL,
	[EmailID] [nvarchar](50) NULL,
	[BirthDay] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubMenus]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubMenuName] [nvarchar](50) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[UpdatedDate] [date] NOT NULL,
	[DeletedDate] [date] NOT NULL,
	[Deleted] [bigint] NOT NULL,
	[Menu_Id] [int] NOT NULL,
 CONSTRAINT [PK_SubMenus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Code] [int] NULL,
	[Manufacturer] [nvarchar](250) NULL,
	[SalePrice] [float] NULL,
	[CostPrice] [float] NULL,
	[PurchasePrice] [float] NULL,
	[MRP] [float] NULL,
	[StandardUnit_ID] [int] NULL,
	[PurchaseUnit_ID] [int] NULL,
	[Category_ID] [int] NULL,
	[PurchaseTax] [int] NULL,
	[SalesTax] [int] NULL,
	[OpeningStock] [int] NULL,
	[IdealQuantity] [int] NULL,
	[ReorderQuantity] [int] NULL,
	[MaxQuantity] [int] NULL,
	[TotalQuantity] [int] NULL,
	[AllowSales] [bit] NULL,
	[AllowPurchase] [bit] NULL,
	[AllowInword] [bit] NULL,
	[AllowOutword] [bit] NULL,
	[Description] [nvarchar](150) NULL,
	[ManufacturingDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[ProfitPercentage] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCustomerPayment]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCustomerPayment](
	[Payments_Id] [int] NOT NULL,
	[CustomerPayments_Id] [int] NOT NULL,
 CONSTRAINT [PK_PaymentCustomerPayment] PRIMARY KEY CLUSTERED 
(
	[Payments_Id] ASC,
	[CustomerPayments_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewUnits]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewUnits](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromQuantity] [nvarchar](50) NULL,
	[FromUnit] [int] NULL,
	[ToQuantity] [nvarchar](50) NULL,
	[ToUnit] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_NewUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForgetPasswordRoleOfUsers]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForgetPasswordRoleOfUsers](
	[ForgetPasswords_Id] [int] NOT NULL,
	[RoleOfUsers_Id] [int] NOT NULL,
 CONSTRAINT [PK_ForgetPasswordRoleOfUsers] PRIMARY KEY CLUSTERED 
(
	[ForgetPasswords_Id] ASC,
	[RoleOfUsers_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankBankAccount]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankBankAccount](
	[BankAccounts_Id] [int] IDENTITY(1,1) NOT NULL,
	[Banks_Id] [int] NOT NULL,
 CONSTRAINT [PK_BankBankAccount_1] PRIMARY KEY CLUSTERED 
(
	[BankAccounts_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NULL,
	[State_ID] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_New_Units]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_New_Units]
AS
SELECT     dbo.NewUnits.Id, dbo.NewUnits.FromQuantity, dbo.NewUnits.FromUnit, dbo.Unit.Name, dbo.NewUnits.ToQuantity, dbo.NewUnits.ToUnit, dbo.Unit.Name AS ToUnitName, dbo.NewUnits.Status
FROM         dbo.NewUnits INNER JOIN
                      dbo.Unit ON dbo.NewUnits.FromUnit = dbo.Unit.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[16] 3) )"
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
         Begin Table = "NewUnits"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 196
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Unit"
            Begin Extent = 
               Top = 20
               Left = 326
               Bottom = 196
               Right = 526
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_New_Units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_New_Units'
GO
/****** Object:  View [dbo].[View_Item_For_Delivery_Challan]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Item_For_Delivery_Challan]
AS
SELECT     I.Id, I.ItemName, I.Code, I.Manufacturer, I.SalePrice, I.CostPrice, I.PurchasePrice, I.MRP, I.StandardUnit_ID, U.Name AS StandardUniName, I.PurchaseUnit_ID, 
                      dbo.Unit.Name AS PurchaseUnitName, I.Category_ID, C.Name AS CategoryName, I.PurchaseTax, T.Name AS PurchaseTaxName, I.SalesTax, 
                      T.Name AS SalesTaxName, I.OpeningStock, I.IdealQuantity, I.ReorderQuantity, I.MaxQuantity, I.TotalQuantity, I.AllowSales, I.AllowPurchase, I.AllowInword, 
                      I.AllowOutword, I.Description, I.ManufacturingDate, I.ExpiryDate, I.ProfitPercentage, I.Status
FROM         dbo.Items AS I LEFT OUTER JOIN
                      dbo.Unit ON I.PurchaseUnit_ID = dbo.Unit.ID LEFT OUTER JOIN
                      dbo.Taxes AS T ON I.PurchaseTax = T.Id AND I.SalesTax = T.Id LEFT OUTER JOIN
                      dbo.Categories AS C ON I.Category_ID = C.Id LEFT OUTER JOIN
                      dbo.Unit AS U ON I.StandardUnit_ID = U.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[5] 2[15] 3) )"
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
         Begin Table = "I"
            Begin Extent = 
               Top = 12
               Left = 0
               Bottom = 319
               Right = 181
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Unit"
            Begin Extent = 
               Top = 143
               Left = 275
               Bottom = 262
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T"
            Begin Extent = 
               Top = 60
               Left = 609
               Bottom = 179
               Right = 769
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 210
               Left = 585
               Bottom = 394
               Right = 768
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "U"
            Begin Extent = 
               Top = 13
               Left = 344
               Bottom = 132
               Right = 504
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
      Begin ColumnWidths = 34
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Item_For_Delivery_Challan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Item_For_Delivery_Challan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Item_For_Delivery_Challan'
GO
/****** Object:  View [dbo].[View_Item]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Item]
AS
SELECT     I.Id, I.ItemName, I.Code, I.Manufacturer, I.SalePrice, I.CostPrice, I.PurchasePrice, I.MRP, I.StandardUnit_ID, U.Name AS StandardUniName, I.PurchaseUnit_ID, 
                      U.Name AS PurchaseUnitName, I.Category_ID, C.Name AS CategoryName, I.PurchaseTax, T.Name AS PurchaseTaxName, I.SalesTax, T.Name AS SalesTaxName, 
                      I.OpeningStock, I.IdealQuantity, I.ReorderQuantity, I.MaxQuantity, I.TotalQuantity, I.AllowSales, I.AllowPurchase, I.AllowInword, I.AllowOutword, I.Description, 
                      I.ManufacturingDate, I.ExpiryDate, I.ProfitPercentage, I.Status
FROM         dbo.Items AS I LEFT OUTER JOIN
                      dbo.Taxes AS T ON I.PurchaseTax = T.Id AND I.SalesTax = T.Id LEFT OUTER JOIN
                      dbo.Categories AS C ON I.Category_ID = C.Id LEFT OUTER JOIN
                      dbo.Unit AS U ON I.StandardUnit_ID = U.ID AND I.PurchaseUnit_ID = U.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[10] 2[21] 3) )"
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
         Begin Table = "I"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 390
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T"
            Begin Extent = 
               Top = 124
               Left = 737
               Bottom = 243
               Right = 897
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 455
               Bottom = 125
               Right = 638
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "U"
            Begin Extent = 
               Top = 0
               Left = 362
               Bottom = 119
               Right = 522
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
      Begin ColumnWidths = 34
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Item'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Item'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Item'
GO
/****** Object:  View [dbo].[ServicesView]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ServicesView]
AS
SELECT     dbo.Services.Id, dbo.Services.ServiceName, dbo.Categories.Name, dbo.Services.SalesPrice, dbo.Services.PurchasePrice, dbo.Services.Unit, 
                      dbo.Services.Category_ID, dbo.Services.PurchaseTax_ID, dbo.Services.SalesTax_ID, dbo.Services.AllowSales, dbo.Services.AllowPurchase, 
                      dbo.Services.Description, dbo.Services.Status
FROM         dbo.Services INNER JOIN
                      dbo.Categories ON dbo.Services.Category_ID = dbo.Categories.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[6] 2[20] 3) )"
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
         Begin Table = "Services"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 293
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Categories"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 125
               Right = 427
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ServicesView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ServicesView'
GO
/****** Object:  View [dbo].[View_State]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_State]
AS
SELECT     dbo.State.ID, dbo.State.StateName, dbo.State.Country_ID, dbo.Country.CountryName, dbo.State.Status
FROM         dbo.State LEFT OUTER JOIN
                      dbo.Country ON dbo.State.Country_ID = dbo.Country.ID
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
         Begin Table = "State"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 133
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Country"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 110
               Right = 396
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_State'
GO
/****** Object:  View [dbo].[View_Users_Role]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Users_Role]
AS
SELECT     dbo.Users.Id, dbo.Users.UserName, dbo.Users.FirstName, dbo.Users.LastName, dbo.Users.Role_ID, dbo.RoleOfUsers.NameOfUserRole, dbo.Users.Company_ID, dbo.Users.ContactNumber, 
                      dbo.Users.EmailID, dbo.Users.BirthDay
FROM         dbo.RoleOfUsers INNER JOIN
                      dbo.Users ON dbo.RoleOfUsers.Id = dbo.Users.Role_ID
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
         Begin Table = "RoleOfUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 6
               Left = 247
               Bottom = 195
               Right = 411
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
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Users_Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Users_Role'
GO
/****** Object:  View [dbo].[View_Users]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Users]
AS
SELECT     Id, UserName, FirstName, LastName, Company_ID, ContactNumber, Role_ID, EmailID, BirthDay, Status
FROM         dbo.Users
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
         Begin Table = "Users"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 214
               Right = 202
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Users'
GO
/****** Object:  View [dbo].[View_SupplierPayment]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_SupplierPayment]
AS
SELECT     Id, Supplier_ID, PaymentType, ChequeNumber, PaymentDate, TotalAmount, PaidAmount, BalanceAmount, IssueDate, DepositeDate, DepositeTo, BankName, Note, 
                      ChequeStatus, Status
FROM         dbo.SupplierPayments
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
         Begin Table = "SupplierPayments"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 224
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SupplierPayment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SupplierPayment'
GO
/****** Object:  Table [dbo].[Supplier_Item_Invoice]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Item_Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Id] [int] NULL,
	[Supplier_Id] [int] NULL,
	[Quantity] [int] NULL,
	[TotalAmount] [float] NULL,
	[BatchNumber] [nvarchar](50) NULL,
	[InsertedDate] [datetime] NULL,
 CONSTRAINT [PK_Supplier_Item_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Supplier_Ledger]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Supplier_Ledger]
AS
SELECT     SP.Id, SP.Supplier_ID, S.Name, S.ContactNumber, SP.TotalAmount, SP.PaidAmount, SP.BalanceAmount, SP.Note, SP.PaymentDate, SP.PaymentType, SP.Status
FROM         dbo.Suppliers AS S INNER JOIN
                      dbo.SupplierPayments AS SP ON S.Id = SP.Supplier_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[13] 2[12] 3) )"
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
         Begin Table = "S"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 200
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SP"
            Begin Extent = 
               Top = 9
               Left = 263
               Bottom = 265
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Supplier_Ledger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Supplier_Ledger'
GO
/****** Object:  View [dbo].[View_Supplier_Item_Invoice]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Supplier_Item_Invoice]
AS
SELECT     SII.Id, SII.Item_Id, SII.Supplier_Id, I.ItemName, SII.Quantity, SII.TotalAmount, SII.BatchNumber, SII.InsertedDate, I.Code, I.Manufacturer, I.SalePrice, I.CostPrice, 
                      I.PurchasePrice, I.MRP, I.StandardUnit_ID, SU.Name AS StandardUniName, I.PurchaseUnit_ID, PU.Name AS PurchaseUnitName, I.Category_ID, I.PurchaseTax, 
                      PT.Name AS PurchaseTaxName, I.SalesTax, ST.Name AS SalesTaxName, I.OpeningStock, I.IdealQuantity, I.ReorderQuantity, I.MaxQuantity, I.TotalQuantity, 
                      I.AllowSales, I.AllowPurchase, I.AllowInword, I.AllowOutword, I.Description, I.ManufacturingDate, I.ExpiryDate, I.ProfitPercentage, S.Name AS SuppliersName, 
                      dbo.Categories.Name AS CategoryName
FROM         dbo.Items AS I INNER JOIN
                      dbo.Supplier_Item_Invoice AS SII ON I.Id = SII.Item_Id INNER JOIN
                      dbo.Suppliers AS S ON SII.Supplier_Id = S.Id INNER JOIN
                      dbo.Unit AS SU ON I.StandardUnit_ID = SU.ID INNER JOIN
                      dbo.Unit AS PU ON I.PurchaseUnit_ID = PU.ID INNER JOIN
                      dbo.Categories ON I.Category_ID = dbo.Categories.Id INNER JOIN
                      dbo.Taxes AS PT ON I.PurchaseTax = PT.Id INNER JOIN
                      dbo.Taxes AS ST ON I.SalesTax = ST.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[63] 4[4] 2[7] 3) )"
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
         Begin Table = "I"
            Begin Extent = 
               Top = 91
               Left = 25
               Bottom = 333
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SII"
            Begin Extent = 
               Top = 0
               Left = 11
               Bottom = 173
               Right = 171
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "S"
            Begin Extent = 
               Top = 182
               Left = 391
               Bottom = 387
               Right = 561
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SU"
            Begin Extent = 
               Top = 0
               Left = 396
               Bottom = 119
               Right = 556
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PU"
            Begin Extent = 
               Top = 125
               Left = 401
               Bottom = 244
               Right = 561
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Categories"
            Begin Extent = 
               Top = 6
               Left = 594
               Bottom = 125
               Right = 777
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PT"
            Begin Extent = 
               Top = 126
               Left = 596
               Bottom = 245
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Supplier_Item_Invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     End
         Begin Table = "ST"
            Begin Extent = 
               Top = 246
               Left = 596
               Bottom = 365
               Right = 756
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
      Begin ColumnWidths = 39
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Supplier_Item_Invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Supplier_Item_Invoice'
GO
/****** Object:  View [dbo].[Country-State-City-View]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Country-State-City-View]
AS
SELECT     dbo.Country.ID AS Country_ID, dbo.Country.CountryName, dbo.State.ID AS State_ID, dbo.State.StateName, dbo.City.ID AS City_ID, dbo.City.City
FROM         dbo.City INNER JOIN
                      dbo.State ON dbo.City.State_ID = dbo.State.ID INNER JOIN
                      dbo.Country ON dbo.State.Country_ID = dbo.Country.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[14] 3) )"
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
         Begin Table = "City"
            Begin Extent = 
               Top = 23
               Left = 463
               Bottom = 197
               Right = 623
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "State"
            Begin Extent = 
               Top = 28
               Left = 266
               Bottom = 132
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Country"
            Begin Extent = 
               Top = 28
               Left = 8
               Bottom = 159
               Right = 168
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Country-State-City-View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Country-State-City-View'
GO
/****** Object:  Table [dbo].[PurchaseInvoices]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseInvoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Supplier_ID] [int] NULL,
	[SupplyerName] [nvarchar](50) NULL,
	[City_ID] [int] NULL,
	[ContactNumber] [nvarchar](20) NULL,
	[InvoiceDate] [date] NULL,
	[DueDate] [date] NULL,
	[Note] [nvarchar](150) NULL,
	[PurchaseReturn] [bit] NULL,
	[TotalTaxAmount] [float] NULL,
	[ShippingCost] [float] NULL,
	[Amount] [float] NULL,
	[RoundOff] [float] NULL,
	[NetAmount] [float] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PurchaseInvoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Supplier_View]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Supplier_View]
AS
SELECT     dbo.Suppliers.Id, dbo.Suppliers.Name, dbo.Suppliers.City_ID, dbo.City.City, dbo.Suppliers.ContactNumber, dbo.Suppliers.ContactNumber2, dbo.Suppliers.EmailID, 
                      dbo.Suppliers.EmailID2, dbo.Suppliers.VATNumber, dbo.Suppliers.TINNumber, dbo.Suppliers.Street, dbo.Suppliers.Area, dbo.Suppliers.Pincode, dbo.Suppliers.Note, 
                      dbo.Suppliers.Status
FROM         dbo.City INNER JOIN
                      dbo.Suppliers ON dbo.City.ID = dbo.Suppliers.City_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
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
         Begin Table = "City"
            Begin Extent = 
               Top = 0
               Left = 317
               Bottom = 119
               Right = 477
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Suppliers"
            Begin Extent = 
               Top = 0
               Left = 0
               Bottom = 216
               Right = 170
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
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Supplier_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Supplier_View'
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[City_ID] [int] NULL,
	[ContactNumber] [nvarchar](20) NULL,
	[ContactNumber2] [nvarchar](20) NULL,
	[EmailID] [nvarchar](50) NULL,
	[EmailID2] [nvarchar](50) NULL,
	[VATNumber] [nvarchar](50) NULL,
	[TINNumber] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[Area] [nvarchar](50) NULL,
	[Pincode] [nvarchar](50) NULL,
	[Note] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City_ID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ContactNumber] [nvarchar](20) NULL,
	[EmailID] [nvarchar](50) NULL,
	[TelephoneNumber] [nvarchar](20) NULL,
	[Address] [nvarchar](250) NULL,
	[State_ID] [int] NULL,
	[PinCode] [nvarchar](10) NULL,
	[Country_ID] [int] NULL,
	[Website] [nvarchar](50) NULL,
	[VATNumber] [nvarchar](50) NULL,
	[LBTNumber] [nvarchar](50) NULL,
	[PANNumber] [nvarchar](50) NULL,
	[LicenseNumber] [nvarchar](50) NULL,
	[TINNo] [nvarchar](50) NULL,
	[STNo] [nvarchar](50) NULL,
	[TANNumber] [nvarchar](50) NULL,
	[CINNumber] [nvarchar](50) NULL,
	[Other] [nvarchar](50) NULL,
	[Service] [nvarchar](250) NULL,
	[FinancialYearFrom] [datetime] NULL,
	[BookingBeginigFrom] [datetime] NULL,
	[CurrencyChar] [nvarchar](50) NULL,
	[CurrencySymbol] [nvarchar](50) NULL,
	[AgreeTermsAndCondition] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewStocks]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewStocks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](250) NULL,
	[Date] [date] NULL,
	[City_ID] [int] NULL,
	[Note] [nvarchar](250) NULL,
	[TotalQuantity] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_NewStocks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartyPayments]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartyPayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[PaymentType] [nvarchar](50) NULL,
	[ChequeNumber] [nvarchar](50) NULL,
	[ReferenceNumber] [nvarchar](50) NULL,
	[PaymentDate] [date] NULL,
	[Amount] [float] NULL,
	[DepositeDate] [date] NULL,
	[DepositeTo] [nvarchar](50) NULL,
	[BankName] [nvarchar](150) NULL,
	[Note] [nvarchar](250) NULL,
	[ChequeStatus] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PartyPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryChallan]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryChallan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NULL,
	[CustomerName] [nvarchar](50) NULL,
	[City_ID] [int] NULL,
	[ContactNumber] [nvarchar](20) NULL,
	[DeliceryChallanDate] [date] NULL,
	[Note] [nvarchar](150) NULL,
	[TotalQuantity] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_DeliveryChallan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerPayments]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[PaymentType] [nvarchar](50) NULL,
	[ChequeNumber] [nvarchar](50) NULL,
	[PaymentDate] [date] NULL,
	[TotalAmount] [float] NULL,
	[PaidAmount] [float] NULL,
	[BalanceAmount] [float] NULL,
	[IssueDate] [date] NULL,
	[DepositeDate] [date] NULL,
	[DepositeTo] [nvarchar](50) NULL,
	[BankName] [nvarchar](150) NULL,
	[Note] [nvarchar](250) NULL,
	[ChequeStatus] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_CustomerPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Customer_View]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Customer_View]
AS
SELECT     dbo.Customers.Id, dbo.Customers.Name, dbo.Customers.City_ID, dbo.City.City, dbo.Customers.ContactNumber, dbo.Customers.ContactNumber2, 
                      dbo.Customers.EmailID, dbo.Customers.EmailID2, dbo.Customers.VATNumber, dbo.Customers.TINNumber, dbo.Customers.Street, dbo.Customers.Area, 
                      dbo.Customers.Pincode, dbo.Customers.Note, dbo.Customers.Status
FROM         dbo.City INNER JOIN
                      dbo.Customers ON dbo.City.ID = dbo.Customers.City_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[16] 3[26] 2) )"
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
         Begin Table = "City"
            Begin Extent = 
               Top = 18
               Left = 316
               Bottom = 122
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Customers"
            Begin Extent = 
               Top = 2
               Left = 4
               Bottom = 211
               Right = 191
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
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Customer_View'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Customer_View'
GO
/****** Object:  Table [dbo].[Customer_Item_Invoice]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Item_Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Id] [int] NULL,
	[Customer_Id] [int] NULL,
	[Quantity] [int] NULL,
	[TotalAmount] [float] NULL,
	[BatchNumber] [nvarchar](50) NULL,
	[InsertedDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_Item_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_Supplier_Wise_Reports]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Supplier_Wise_Reports]
	@supplier_id as int,
	@startdate as datetime,
	@enddate as datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 DECLARE @quantitySum int
	DECLARE @TotalAmount float
	DECLARE @itemName varchar(250)
	DECLARE @ItemId INT
	DECLARE @salePrice float
	DECLARE  @Id int
	DECLARE @COUNT INT
	DECLARE @innerStartDT date
	DECLARE @innerEndDt date
	DECLARE @count1st INT
	DECLARE @CustId INT
	DECLARE @Tempitem INT
	DECLARE @SelectItemId INT
	Declare @ItemCount int
	declare @i int
	set @innerStartDT=@startdate
	set @innerEndDt=@enddate
	set @CustId=@supplier_id
	Declare @SupplierWise_Report Table (Sdate datetime,ItemId int,ItemName nvarchar(250),SalesPrice float,TotalQuantity int,TotalAmount float)
    
    
    -- Insert statements for procedure here
	 WHILE CONVERT(datetime, @startdate, 120) <=   CONVERT(datetime, @enddate, 120)                
					BEGIN 
						IF EXISTS (select * from View_Supplier_Item_Invoice where InsertedDate= @innerStartDT AND Supplier_Id=@supplier_id)
							BEGIN
									select @COUNT=COUNT(*) from View_Supplier_Item_Invoice where InsertedDate= @innerStartDT AND Supplier_Id=@supplier_id;
									--SELECT @COUNT AS 'COUNT'       
							
				            				IF @COUNT=1
													BEGIN
															--print 'If'
													         select @quantitySum=sum(Quantity),@TotalAmount=sum(TotalAmount),@itemName=ItemName,@ItemId=Item_Id,@salePrice=SalePrice from View_Supplier_Item_Invoice where InsertedDate= @innerStartDT and Supplier_Id=@supplier_id GROUP BY ItemName,Item_Id,SalePrice
															 insert into @SupplierWise_Report(Sdate,ItemId,ItemName,SalesPrice,TotalQuantity,TotalAmount)
															 values(@startdate,@ItemId,@itemName,@salePrice,@quantitySum,@TotalAmount)
																	
													End
												Else
															
													BEGIN
															
															 --print 'else'
															set @i=1
															  
															 while CONVERT(int,@i)<=CONVERT(int,@COUNT)
															  begin
																    select top (@i) @Id=Id,@ItemId=Item_Id from View_Supplier_Item_Invoice where InsertedDate= @innerStartDT AND Supplier_Id=@supplier_id;
																    --select @Id as 'Id'
																   select @ItemCount=COUNT(*) from View_Supplier_Item_Invoice where InsertedDate= @innerStartDT AND Supplier_Id=@supplier_id and Item_Id=@ItemId
																	--select @ItemCount as 'itemCount'
																	--select @COUNT as 'Count'
																		
																		if @ItemCount>1
																			Begin
																					select @i=@ItemCount+1
																			   
																					select @quantitySum=sum(Quantity),@TotalAmount=sum(TotalAmount),@itemName=ItemName,@ItemId=Item_Id,@salePrice=SalePrice from View_Supplier_Item_Invoice where InsertedDate= @innerStartDT and Supplier_Id=@supplier_id and Item_Id=@ItemId GROUP BY ItemName,Item_Id,SalePrice;
																					insert into @SupplierWise_Report(Sdate,ItemId,ItemName,SalesPrice,TotalQuantity,TotalAmount)
																					values(@startdate,@ItemId,@itemName,@salePrice,@quantitySum,@TotalAmount)
																					--select @Id=@Id-1
																					--select @i as 'ic'
																					
																			End
																		else
																		
																			Begin
																					select @i=@i+1
																			   
																					select @quantitySum=sum(Quantity),@TotalAmount=sum(TotalAmount),@itemName=ItemName,@ItemId=Item_Id,@salePrice=SalePrice from View_Supplier_Item_Invoice where InsertedDate= @innerStartDT and Supplier_Id=@supplier_id and Item_Id=@ItemId GROUP BY ItemName,Item_Id,SalePrice;
																					insert into @SupplierWise_Report(Sdate,ItemId,ItemName,SalesPrice,TotalQuantity,TotalAmount)
																					values(@startdate,@ItemId,@itemName,@salePrice,@quantitySum,@TotalAmount)
																					--select @Id=@Id-1
																					--select @i as 'i'
																			End
																		
																	
															 end	
													
													End
												
						  	END
						 select @startdate=DateAdd(DD, 1, @startdate)	-- Get next day     
						
						     
						set @innerStartDT=@startdate
						--select @innerStartDT as 'innerStartDate'
						    
					END 
				
  
			
 select * from @SupplierWise_Report
 
 
END

-- select * from View_Supplier_Item_Invoice where insertedDate between '2015-12-1' and '2016-1-31' and Supplier_Id=1
-- exec SP_Supplier_Wise_Reports 1,'2015-12-1','2016-1-31'
GO
/****** Object:  Table [dbo].[SalesInvoices]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesInvoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NULL,
	[CustomerName] [nvarchar](50) NULL,
	[City_ID] [int] NULL,
	[ContactNumber] [nvarchar](20) NULL,
	[InvoiceDate] [date] NULL,
	[Ref] [nvarchar](50) NULL,
	[DueDate] [date] NULL,
	[Note] [nvarchar](150) NULL,
	[TotalTaxAmount] [float] NULL,
	[ShippingCost] [float] NULL,
	[Amount] [float] NULL,
	[RoundOff] [float] NULL,
	[NetAmount] [float] NULL,
	[SalesReturn] [float] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SalesInvoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesInvoiceCustomer]    Script Date: 01/13/2016 14:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesInvoiceCustomer](
	[SalesInvoices_Id] [int] NOT NULL,
	[Customers_Id] [int] NOT NULL,
 CONSTRAINT [PK_SalesInvoiceCustomer] PRIMARY KEY CLUSTERED 
(
	[SalesInvoices_Id] ASC,
	[Customers_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Companies]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Companies]
AS
SELECT     dbo.Companies.Id, dbo.Companies.City_ID, dbo.City.City, dbo.Companies.Name, dbo.Companies.ContactNumber, dbo.Companies.EmailID, dbo.Companies.TelephoneNumber, 
                      dbo.Companies.Address, dbo.Companies.State_ID, dbo.State.StateName, dbo.Companies.PinCode, dbo.Companies.Country_ID, dbo.Country.CountryName, dbo.Companies.Website, 
                      dbo.Companies.VATNumber, dbo.Companies.LBTNumber, dbo.Companies.PANNumber, dbo.Companies.LicenseNumber, dbo.Companies.TINNo, dbo.Companies.STNo, dbo.Companies.TANNumber, 
                      dbo.Companies.CINNumber, dbo.Companies.Other, dbo.Companies.Service, dbo.Companies.FinancialYearFrom, dbo.Companies.BookingBeginigFrom, dbo.Companies.CurrencySymbol, 
                      dbo.Companies.CurrencyChar,dbo.Companies.AgreeTermsAndCondition,dbo.Companies.Status
FROM         dbo.Country INNER JOIN
                      dbo.State INNER JOIN
                      dbo.Companies INNER JOIN
                      dbo.City ON dbo.Companies.City_ID = dbo.City.ID ON dbo.State.ID = dbo.Companies.State_ID ON dbo.Country.ID = dbo.Companies.Country_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[13] 2[9] 3) )"
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
         Begin Table = "City"
            Begin Extent = 
               Top = 9
               Left = 639
               Bottom = 114
               Right = 799
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Companies"
            Begin Extent = 
               Top = 6
               Left = 28
               Bottom = 235
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "Country"
            Begin Extent = 
               Top = 1
               Left = 254
               Bottom = 91
               Right = 414
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "State"
            Begin Extent = 
               Top = 1
               Left = 436
               Bottom = 106
               Right = 596
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Companies'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Companies'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Companies'
GO
/****** Object:  View [dbo].[View_SupplierCheque]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_SupplierCheque]
AS
SELECT     dbo.PurchaseInvoices.Id, dbo.Suppliers.Name, dbo.SupplierPayments.ChequeNumber, dbo.SupplierPayments.PaymentType, dbo.SupplierPayments.PaymentDate, 
                      dbo.SupplierPayments.PaidAmount, dbo.SupplierPayments.TotalAmount, dbo.SupplierPayments.BalanceAmount, dbo.SupplierPayments.DepositeDate, 
                      dbo.SupplierPayments.ChequeStatus, dbo.SupplierPayments.Supplier_ID, dbo.SupplierPayments.IssueDate, dbo.SupplierPayments.DepositeTo, 
                      dbo.SupplierPayments.BankName, dbo.SupplierPayments.Note, dbo.SupplierPayments.Status
FROM         dbo.PurchaseInvoices INNER JOIN
                      dbo.Suppliers ON dbo.PurchaseInvoices.Supplier_ID = dbo.Suppliers.Id INNER JOIN
                      dbo.SupplierPayments ON dbo.Suppliers.Id = dbo.SupplierPayments.Supplier_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[14] 3) )"
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
         Begin Table = "PurchaseInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 229
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Suppliers"
            Begin Extent = 
               Top = 6
               Left = 445
               Bottom = 229
               Right = 615
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SupplierPayments"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 227
               Right = 407
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SupplierCheque'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SupplierCheque'
GO
/****** Object:  View [dbo].[View_Supplier_PurcchaseIvoice_SupplierPayment]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Supplier_PurcchaseIvoice_SupplierPayment]
AS
SELECT     S.Id, SP.PaymentType, SP.ChequeNumber, SP.PaymentDate, SP.TotalAmount, SP.PaidAmount, SP.BalanceAmount, SP.DepositeDate, SP.DepositeTo, SP.BankName, 
                      SP.Status, S.Name, PI.Id AS PurchaseInvoiceID, PI.InvoiceDate, PI.DueDate, PI.ContactNumber, PI.TotalTaxAmount, PI.ShippingCost, PI.Amount, PI.RoundOff, 
                      PI.NetAmount, SP.Id AS TransactionId
FROM         dbo.Suppliers AS S INNER JOIN
                      dbo.SupplierPayments AS SP ON S.Id = SP.Supplier_ID INNER JOIN
                      dbo.PurchaseInvoices AS PI ON S.Id = PI.Supplier_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[3] 2[32] 3) )"
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
         Begin Table = "S"
            Begin Extent = 
               Top = 6
               Left = 445
               Bottom = 227
               Right = 615
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SP"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 229
               Right = 407
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PI"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 222
               Right = 206
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
      Begin ColumnWidths = 23
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Supplier_PurcchaseIvoice_SupplierPayment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Supplier_PurcchaseIvoice_SupplierPayment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Supplier_PurcchaseIvoice_SupplierPayment'
GO
/****** Object:  View [dbo].[View_PartyPayment]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_PartyPayment]
AS
SELECT     PP.Id, PP.Customer_ID, C.Name, C.ContactNumber, PP.PaymentType, PP.ChequeNumber, PP.ReferenceNumber, PP.PaymentDate, PP.Amount, PP.DepositeDate, 
                      PP.DepositeTo, PP.BankName, PP.Note, PP.ChequeStatus, PP.Status
FROM         dbo.Customers AS C INNER JOIN
                      dbo.PartyPayments AS PP ON C.Id = PP.Customer_ID
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
         Begin Table = "C"
            Begin Extent = 
               Top = 12
               Left = 278
               Bottom = 182
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PP"
            Begin Extent = 
               Top = 12
               Left = 0
               Bottom = 225
               Right = 176
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_PartyPayment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_PartyPayment'
GO
/****** Object:  View [dbo].[View_StockReconciliations]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_StockReconciliations]
AS
SELECT     I.Id, I.ItemName, I.Code, I.Manufacturer, I.SalePrice, I.CostPrice, I.PurchasePrice, I.MRP, I.StandardUnit_ID, I.PurchaseUnit_ID, I.Category_ID, I.PurchaseTax, 
                      I.SalesTax, I.OpeningStock, I.IdealQuantity, I.ReorderQuantity, I.MaxQuantity, I.TotalQuantity, I.AllowSales, I.AllowPurchase, I.AllowInword, I.AllowOutword, 
                      I.Description, I.ManufacturingDate, I.ExpiryDate, I.ProfitPercentage, I.Status, CII.Quantity AS SalesQuantity, CII.InsertedDate AS SalesInvoiceDate, 
                      dbo.Supplier_Item_Invoice.Quantity AS PurchaseQuantity, dbo.Supplier_Item_Invoice.InsertedDate AS PurchaseInvoiceDate
FROM         dbo.Items AS I INNER JOIN
                      dbo.Customer_Item_Invoice AS CII ON I.Id = CII.Item_Id INNER JOIN
                      dbo.Supplier_Item_Invoice ON I.Id = dbo.Supplier_Item_Invoice.Item_Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[1] 2[31] 3) )"
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
         Begin Table = "I"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 229
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CII"
            Begin Extent = 
               Top = 6
               Left = 257
               Bottom = 231
               Right = 417
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Supplier_Item_Invoice"
            Begin Extent = 
               Top = 6
               Left = 455
               Bottom = 223
               Right = 615
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
      Begin ColumnWidths = 33
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StockReconciliations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Alias = 900
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StockReconciliations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StockReconciliations'
GO
/****** Object:  StoredProcedure [dbo].[SP_VAT]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_VAT]
@startDate datetime,
@endDate datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @TotalPurchaseAmount float
	declare @InputTaxAmount float
	declare @OutputTaxAmount float
	
	declare @TotalSalesAmount float
	declare @count int
	DECLARE @loop INT
	SET @loop = 1	
	SET @count = 2	
	
	Declare @VatReport Table (PurchaseTaxRate nvarchar(50), PurchaseAmount float,InputTaxAmount float,SalesTaxRate nvarchar(50),SaleAmount float,OutputTaxAmount float)
	
	SET NOCOUNT on;
				
							select @TotalPurchaseAmount=sum(NetAmount) from dbo.PurchaseInvoices where InvoiceDate between @startDate and @endDate
							select @TotalSalesAmount=sum(NetAmount) from dbo.SalesInvoices where InvoiceDate between @startDate and @endDate
	 
				set @InputTaxAmount=((@TotalPurchaseAmount/100)*5)
				set @OutputTaxAmount=((@TotalSalesAmount/100)*5)
				
				insert into @VatReport(PurchaseTaxRate,PurchaseAmount,InputTaxAmount,SalesTaxRate,SaleAmount,OutputTaxAmount)
				values ('VAT (5%)',@TotalPurchaseAmount,@InputTaxAmount,'VAT (5%)',@TotalSalesAmount,@OutputTaxAmount)
		
				
				
				set @InputTaxAmount=((@TotalPurchaseAmount/100)*12.5)
				set @OutputTaxAmount=((@TotalSalesAmount/100)*12.5)
				
				insert into @VatReport(PurchaseTaxRate,PurchaseAmount,InputTaxAmount,SalesTaxRate,SaleAmount,OutputTaxAmount)
				values ('VAT (12.5%)',@TotalPurchaseAmount,@InputTaxAmount,'VAT (12.5%)',@TotalSalesAmount,@OutputTaxAmount)
		
				select @TotalPurchaseAmount=SUM(PurchaseAmount),@InputTaxAmount=SUM(InputTaxAmount),@TotalSalesAmount=SUM(SaleAmount),@OutputTaxAmount=SUM(OutputTaxAmount) from @VatReport
				insert into @VatReport(PurchaseTaxRate,PurchaseAmount,InputTaxAmount,SalesTaxRate,SaleAmount,OutputTaxAmount)
				values ('Total',@TotalPurchaseAmount,@InputTaxAmount,'Total',@TotalSalesAmount,@OutputTaxAmount)
		
		
		
		
		
	 select * from @VatReport
	 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Daily_Profit_And_Loss]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Daily_Profit_And_Loss]
@startDate as datetime,
@endDate as datetime


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	Declare @DailyProfitAndLoss Table (PurchaseAmount float,PurchaseDate datetime,SaleAmount float,SaleDate Datetime,GrossProfit float,ExpensesAmount float,ExpensesDate Datetime,NetProfit float)
	
	
	DECLARE @puchaseAmount float
	DECLARE @salesAmount float
	DECLARE @ExpensesAmount float
	DECLARE @temp nvarchar(100)
	DECLARE @PurchaseCount float
	DECLARE @PurchaseDate datetime
	
	DECLARE @salesCount float
	DECLARE @SalesDate datetime
	
	DECLARE @expensesCount float
	DECLARE @ExpensesDate datetime
	
	DECLARE @grossProfit float
	DECLARE @netProfit float
	
	set @grossProfit=0
	set @netProfit=0
	SET NOCOUNT ON;
	-- Compare date without time
					--select * from @DailyProfitAndLoss  

				 WHILE CONVERT(VARCHAR(10), @startDate, 120) <   CONVERT(VARCHAR(10), @endDate, 120)                
					
					BEGIN          
						set @grossProfit=0
						set @netProfit=0
								IF EXISTS (select * from PurchaseInvoices where InvoiceDate= @startDate )
									BEGIN
											--print 'exist'
											
											select @PurchaseCount=COUNT(*)  from PurchaseInvoices where InvoiceDate= @startDate;
											IF @PurchaseCount=1
												BEGIN
												
													select @puchaseAmount=sum(NetAmount) from PurchaseInvoices where InvoiceDate= @startDate
													insert into @DailyProfitAndLoss(PurchaseAmount,PurchaseDate)
													values(@puchaseAmount,@startDate)
												End
											Else
												BEGIN
												
													select @puchaseAmount=sum(NetAmount) from PurchaseInvoices where InvoiceDate= @startDate
													insert into @DailyProfitAndLoss(PurchaseAmount,PurchaseDate)
													values(@puchaseAmount,@startDate)
												END
												
										--select @startDate AS 'WStartDate' 
										
									 END
								--ELSE
								--	BEGIN
								--	   print 'Not exist'
								--		--select @startDate AS 'WStartDate' 
									   
								--	END
									
		-- ************************************ END PURCHASE INVOICE WHILE LOOP************************** --
						IF EXISTS (select * from SalesInvoices where InvoiceDate= @startDate )
									BEGIN
											--print 'exist'
											select @salesCount=COUNT(*) from SalesInvoices where InvoiceDate= @startDate;
											IF @salesCount=1
												BEGIN
												
													select @salesAmount=sum(NetAmount) from SalesInvoices where InvoiceDate= @startDate
													IF EXISTS(SELECT * FROM @DailyProfitAndLoss WHERE PurchaseDate=@startDate)
														BEGIN 
																	UPDATE @DailyProfitAndLoss SET 
																		SaleAmount=@salesAmount,
																		SaleDate=@startDate
																	WHERE 
																		PurchaseDate=@startDate
														END
													ELSE
														BEGIN
															insert into @DailyProfitAndLoss
																(SaleAmount,SaleDate)
															values(@salesAmount,@startDate)
														END	
														
													
												
														---print 'sales Invoice row count if'
												End
											Else
												BEGIN
												
													select @salesAmount=sum(NetAmount) from SalesInvoices where InvoiceDate= @startDate
													IF EXISTS(SELECT * FROM @DailyProfitAndLoss WHERE PurchaseDate=@startDate)
														BEGIN 
																	UPDATE @DailyProfitAndLoss SET 
																		SaleAmount=@salesAmount,
																		SaleDate=@startDate
																	WHERE 
																		PurchaseDate=@startDate
														END
													ELSE
														BEGIN
															insert into @DailyProfitAndLoss
																(SaleAmount,SaleDate)
															values(@salesAmount,@startDate)
														END	
														
														---print 'sales Invoice row count else'
													
												END
												
										--select @startDate AS 'WStartDate' 
										
									 END
	--****************************************** Expenses ******************************************
	
									IF EXISTS (select * from Expenses where Date= @startDate )
													BEGIN
															--print 'exist'
															select @expensesCount=COUNT(*)  from Expenses where Date= @startDate;
															IF @expensesCount=1
																BEGIN
																
																	select @ExpensesAmount=sum(Amount) from Expenses where Date= @startDate
																	IF EXISTS(SELECT * FROM @DailyProfitAndLoss WHERE PurchaseDate=@startDate or SaleDate=@startDate)
																		BEGIN 
																					UPDATE @DailyProfitAndLoss SET 
																						ExpensesAmount=@ExpensesAmount,
																						ExpensesDate=@startDate
																					WHERE 
																						PurchaseDate=@startDate or SaleDate=@startDate
																		END
																	ELSE
																		BEGIN
																			insert into @DailyProfitAndLoss
																				(ExpensesAmount,ExpensesDate)
																			values(@ExpensesAmount,@startDate)
																		END	
																		
																	
																
																		--print 'sales Invoice row count if'
																End
															Else
																BEGIN
																		print 'Come In Expenses '
																
																	select @ExpensesAmount=sum(Amount) from Expenses where Date= @startDate
																	IF EXISTS(SELECT * FROM @DailyProfitAndLoss WHERE PurchaseDate=@startDate or SaleDate=@startDate)
																		BEGIN 
																						UPDATE @DailyProfitAndLoss SET 
																						ExpensesAmount=@ExpensesAmount,
																						ExpensesDate=@startDate
																					WHERE 
																						PurchaseDate=@startDate or SaleDate=@startDate
																		END
																	ELSE
																		BEGIN
																			insert into @DailyProfitAndLoss
																				(ExpensesAmount,ExpensesDate)
																			values(@ExpensesAmount,@startDate)
																		END	
																		
																		
																	--	print 'sales Invoice row count else'
																		
																END
																
														--select @startDate AS 'WStartDate' 
														
													 END
												
																				
														
									
						select @salesAmount= SaleAmount,@puchaseAmount=PurchaseAmount,@ExpensesAmount=ExpensesAmount	from @DailyProfitAndLoss where	SaleDate=@startDate or PurchaseDate=@startDate or ExpensesDate=@startDate
						
						
							
						if @puchaseAmount is null 
						
							begin
								set @puchaseAmount=0
								set @PurchaseDate=@startDate
							end
						
						
						 if @salesAmount is null 
							begin
								set @salesAmount=0
								--set @SalesDate=@startDate
							--print 'y'
							end
						 if @ExpensesAmount is null 
							begin
								set @ExpensesAmount=0
								print 'y'
								set @ExpensesDate=@startDate
							end
						
						
						set @grossProfit=@salesAmount-@puchaseAmount
						set @netProfit=@grossProfit-@ExpensesAmount
						
						update @DailyProfitAndLoss set
						SaleAmount=@salesAmount,
						--SaleDate=@SalesDate,
						PurchaseAmount=@puchaseAmount,
						--PurchaseDate=@PurchaseDate,
						ExpensesAmount=@ExpensesAmount,
					--ExpensesDate=@ExpensesDate,
						GrossProfit=@grossProfit,
						NetProfit=@netProfit
						where
						SaleDate=@startDate or  PurchaseDate=@startDate or ExpensesDate=@startDate
						
						
						set @startDate=DateAdd(day, 1, @startDate)	-- Get next day     
						
						
						            
					END
			select *  from @DailyProfitAndLoss  
			return 

 
END


-- exec [Sp_Daily_Profit_And_Loss] '2015-12-1','2015-12-26'

-- select * from  PurchaseInvoices ; select * from  SalesInvoices ;select * from  Expenses
GO
/****** Object:  View [dbo].[view_CustomerPayment]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_CustomerPayment]
AS
SELECT     dbo.CustomerPayments.Id, dbo.CustomerPayments.Customer_ID, dbo.CustomerPayments.PaymentType, dbo.CustomerPayments.ChequeNumber, 
                      dbo.CustomerPayments.PaymentDate, dbo.CustomerPayments.TotalAmount, dbo.CustomerPayments.PaidAmount, dbo.CustomerPayments.BalanceAmount, 
                      dbo.CustomerPayments.DepositeDate, dbo.CustomerPayments.DepositeTo, dbo.CustomerPayments.BankName, dbo.CustomerPayments.Note, 
                      dbo.CustomerPayments.Status, dbo.Customers.Name, dbo.Customers.ContactNumber, dbo.CustomerPayments.ChequeStatus, 
                      dbo.CustomerPayments.IssueDate
FROM         dbo.CustomerPayments INNER JOIN
                      dbo.Customers ON dbo.CustomerPayments.Customer_ID = dbo.Customers.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[10] 3) )"
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
         Begin Table = "CustomerPayments"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Customers"
            Begin Extent = 
               Top = 6
               Left = 239
               Bottom = 125
               Right = 409
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
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_CustomerPayment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_CustomerPayment'
GO
/****** Object:  View [dbo].[View_CustomerCheque]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_CustomerCheque]
AS
SELECT     SI.Id, CP.Customer_ID, CP.PaymentType, CP.ChequeNumber, CP.PaymentDate, CP.TotalAmount, CP.PaidAmount, CP.BalanceAmount, CP.IssueDate, CP.DepositeDate, 
                      CP.DepositeTo, CP.BankName, CP.Note, CP.ChequeStatus, CP.Status, C.Name
FROM         dbo.CustomerPayments AS CP INNER JOIN
                      dbo.Customers AS C ON CP.Customer_ID = C.Id INNER JOIN
                      dbo.SalesInvoices AS SI ON C.Id = SI.Customer_ID
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
         Begin Table = "CP"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 229
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 239
               Bottom = 229
               Right = 409
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SI"
            Begin Extent = 
               Top = 6
               Left = 447
               Bottom = 229
               Right = 615
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CustomerCheque'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CustomerCheque'
GO
/****** Object:  View [dbo].[View_Customer_Payment_SalesInvoice]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Customer_Payment_SalesInvoice]
AS
SELECT     C.Id, SI.Id AS SalesInvoiceId, SI.CustomerName, SI.InvoiceDate, SI.ContactNumber, SI.SalesReturn, SI.NetAmount, SI.RoundOff, SI.Amount, SI.ShippingCost, 
                      SI.TotalTaxAmount, SI.DueDate, SI.Ref, CP.Id AS TransactionId, CP.PaymentType, CP.ChequeNumber, CP.PaymentDate, CP.TotalAmount, CP.PaidAmount, 
                      CP.BalanceAmount, CP.DepositeDate, CP.BankName, CP.DepositeTo, CP.Status
FROM         dbo.Customers AS C INNER JOIN
                      dbo.SalesInvoices AS SI ON C.Id = SI.Customer_ID INNER JOIN
                      dbo.CustomerPayments AS CP ON C.Id = CP.Customer_ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[5] 2[12] 3) )"
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
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 272
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SI"
            Begin Extent = 
               Top = 6
               Left = 463
               Bottom = 272
               Right = 631
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CP"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 291
               Right = 409
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
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customer_Payment_SalesInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customer_Payment_SalesInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customer_Payment_SalesInvoice'
GO
/****** Object:  View [dbo].[View_Customer_Ledger]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Customer_Ledger]
AS
SELECT     dbo.Customers.Id, dbo.Customers.Name, dbo.Customers.ContactNumber, dbo.CustomerPayments.PaymentDate, dbo.CustomerPayments.TotalAmount, 
                      dbo.CustomerPayments.PaidAmount, dbo.CustomerPayments.BalanceAmount, dbo.CustomerPayments.Note, dbo.CustomerPayments.PaymentType, 
                      dbo.CustomerPayments.Status
FROM         dbo.CustomerPayments INNER JOIN
                      dbo.Customers ON dbo.CustomerPayments.Customer_ID = dbo.Customers.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[20] 2[9] 3) )"
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
         Configuration = "(H (4[30] 2[40] 3) )"
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
         Configuration = "(H (4[60] 2) )"
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
         Begin Table = "CustomerPayments"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 241
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Customers"
            Begin Extent = 
               Top = 10
               Left = 289
               Bottom = 204
               Right = 459
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
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customer_Ledger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customer_Ledger'
GO
/****** Object:  View [dbo].[View_Customer_Item_Invoice]    Script Date: 01/13/2016 14:56:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Customer_Item_Invoice]
AS
SELECT     CII.Id, CII.Item_Id, CII.Quantity, CII.TotalAmount, CII.BatchNumber, CII.InsertedDate, CII.Customer_Id, C.Name AS CustomerName, I.ItemName, I.Code, I.Manufacturer, 
                      I.SalePrice, I.CostPrice, I.PurchasePrice, I.MRP, I.StandardUnit_ID, SU.Name AS StandardUniName, I.PurchaseUnit_ID, PU.Name AS PurchaseUnitName, 
                      I.Category_ID, Category.Name AS CategoryName, I.PurchaseTax, PT.Name AS PurchaseTaxName, I.SalesTax, ST.Name AS SalesTaxName, I.OpeningStock, 
                      I.IdealQuantity, I.ReorderQuantity, I.MaxQuantity, I.TotalQuantity, I.ManufacturingDate, I.ExpiryDate, I.ProfitPercentage, I.AllowSales, I.AllowPurchase, I.AllowInword, 
                      I.AllowOutword, I.Description
FROM         dbo.Customer_Item_Invoice AS CII INNER JOIN
                      dbo.Items AS I ON CII.Item_Id = I.Id INNER JOIN
                      dbo.Customers AS C ON CII.Customer_Id = C.Id INNER JOIN
                      dbo.Taxes AS PT ON I.PurchaseTax = PT.Id INNER JOIN
                      dbo.Taxes AS ST ON I.SalesTax = ST.Id LEFT OUTER JOIN
                      dbo.Categories AS Category ON I.Category_ID = Category.Id LEFT OUTER JOIN
                      dbo.Unit AS SU ON I.StandardUnit_ID = SU.ID LEFT OUTER JOIN
                      dbo.Unit AS PU ON I.PurchaseUnit_ID = PU.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[12] 2[12] 3) )"
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
         Begin Table = "CII"
            Begin Extent = 
               Top = 1
               Left = 0
               Bottom = 160
               Right = 124
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "I"
            Begin Extent = 
               Top = 0
               Left = 309
               Bottom = 221
               Right = 490
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 11
               Left = 151
               Bottom = 201
               Right = 290
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PT"
            Begin Extent = 
               Top = 75
               Left = 647
               Bottom = 194
               Right = 807
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ST"
            Begin Extent = 
               Top = 224
               Left = 254
               Bottom = 343
               Right = 414
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Category"
            Begin Extent = 
               Top = 0
               Left = 716
               Bottom = 119
               Right = 899
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SU"
            Begin Extent = 
               Top = 0
               Left = 500
               Bottom = 119
               Right = 660
            End
            DisplayFlags = 280
            TopColumn = 0
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customer_Item_Invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
         Begin Table = "PU"
            Begin Extent = 
               Top = 209
               Left = 565
               Bottom = 328
               Right = 725
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
      Begin ColumnWidths = 38
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customer_Item_Invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customer_Item_Invoice'
GO
/****** Object:  StoredProcedure [dbo].[SP_MothlyProfitAndLossReport]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_MothlyProfitAndLossReport]
	@startdate as datetime,
	@enddate as datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Declare @DailyProfitAndLoss Table (PurchaseAmount float,PurchaseDate datetime,SaleAmount float,SaleDate Datetime,ExpensesAmount float,ExpensesDate Datetime)
	DECLARE @puchaseAmount float
	DECLARE @salesAmount float
	DECLARE @ExpensesAmount float
	Declare @stDate date
	set @stDate=@startDate
	declare @nextdate date
	DECLARE @PurchaseCount float
	DECLARE @salesCount float
	DECLARE @expensesCount float
	
	
	
	WHILE CONVERT(VARCHAR(10), @stDate, 120) <   CONVERT(VARCHAR(10), @endDate, 120)                
					BEGIN              
					           set @nextdate=dateadd(mm, 1, @stDate)
					          -- select @nextdate as 'NextDate'
								IF EXISTS (select * from PurchaseInvoices where InvoiceDate between @stDate and @nextdate)
									BEGIN
											--print 'exist'
											select @PurchaseCount=COUNT(*) from PurchaseInvoices where InvoiceDate between @stDate and @nextdate;
											IF @PurchaseCount=1
												BEGIN
												
													select @puchaseAmount=sum(NetAmount) from PurchaseInvoices where InvoiceDate between @stDate and @nextdate
													insert into @DailyProfitAndLoss(PurchaseAmount,PurchaseDate)
													values(@puchaseAmount,@stDate)
												End
											Else
												BEGIN
												
													select @puchaseAmount=sum(NetAmount) from PurchaseInvoices where InvoiceDate between @stDate and @nextdate
													insert into @DailyProfitAndLoss(PurchaseAmount,PurchaseDate)
													values(@puchaseAmount,@stDate)
												END
												
										--select @startDate AS 'WStartDate' 
										
									 END
								--ELSE
								--	BEGIN
								--	   print 'Not exist'
								--		--select @startDate AS 'WStartDate' 
									   
								--	END
									
		-- ************************************ END PURCHASE INVOICE WHILE LOOP************************** --
						IF EXISTS (select * from SalesInvoices where InvoiceDate between @stDate and @nextdate )
									BEGIN
											--print 'exist'
											select @salesCount=COUNT(*) from SalesInvoices where InvoiceDate between @stDate and @nextdate;
											IF @salesCount=1
												BEGIN
												
													select @salesAmount=sum(NetAmount) from SalesInvoices where InvoiceDate between @stDate and @nextdate
													IF EXISTS(SELECT * FROM @DailyProfitAndLoss WHERE PurchaseDate=@stDate)
														BEGIN 
																	UPDATE @DailyProfitAndLoss SET 
																		SaleAmount=@salesAmount,
																		SaleDate=@stDate
																	WHERE 
																		PurchaseDate=@stDate
														END
													ELSE
														BEGIN
															insert into @DailyProfitAndLoss
																(SaleAmount,SaleDate)
															values(@salesAmount,@stDate)
														END	
														
													
												
														--print 'sales Invoice row count if'
												End
											Else
												BEGIN
												
													select @salesAmount=sum(NetAmount) from SalesInvoices where InvoiceDate between @stDate and @nextdate
													IF EXISTS(SELECT * FROM @DailyProfitAndLoss WHERE PurchaseDate=@stDate)
														BEGIN 
																	UPDATE @DailyProfitAndLoss SET 
																		SaleAmount=@salesAmount,
																		SaleDate=@stDate
																	WHERE 
																		PurchaseDate=@stDate
														END
													ELSE
														BEGIN
															insert into @DailyProfitAndLoss
																(SaleAmount,SaleDate)
															values(@salesAmount,@stDate)
														END	
														
														--print 'sales Invoice row count else'
														
												END
												
										--select @startDate AS 'WStartDate' 
										
									 END
	--****************************************** Expenses ******************************************
	
									IF EXISTS (select * from Expenses where Date between @stDate and @nextdate )
													BEGIN
															--print 'exist'
															select @expensesCount=COUNT(*) from Expenses where Date between @stDate and @nextdate;
															IF @expensesCount=1
																BEGIN
																
																	select @ExpensesAmount=sum(Amount) from Expenses where Date between @stDate and @nextdate
																	IF EXISTS(SELECT * FROM @DailyProfitAndLoss WHERE PurchaseDate=@stDate)
																		BEGIN 
																					UPDATE @DailyProfitAndLoss SET 
																						ExpensesAmount=@ExpensesAmount,
																						ExpensesDate=@stDate
																					WHERE 
																						PurchaseDate= @stDate
																		END
																	ELSE
																		BEGIN
																			insert into @DailyProfitAndLoss
																				(ExpensesAmount,ExpensesDate)
																			values(@ExpensesAmount,@stDate)
																		END	
																		
																	
																
																		--print 'sales Invoice row count if'
																End
															Else
																BEGIN
																
																	select @ExpensesAmount=sum(Amount) from Expenses where Date between @stDate and @nextdate
																	IF EXISTS(SELECT * FROM @DailyProfitAndLoss WHERE PurchaseDate=@stDate)
																		BEGIN 
																						UPDATE @DailyProfitAndLoss SET 
																						ExpensesAmount=@ExpensesAmount,
																						ExpensesDate=@stDate
																					WHERE 
																						PurchaseDate=@stDate
																		END
																	ELSE
																		BEGIN
																			insert into @DailyProfitAndLoss
																				(ExpensesAmount,ExpensesDate)
																			values(@ExpensesAmount,@stDate)
																		END	
																		
																		
																	--	print 'sales Invoice row count else'
																		
																END
																
														
														
													 END
												
																				
														
									
									set @stDate=@nextdate
						
					END
 
		
 select * from @DailyProfitAndLoss 
	
    
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Stock_Reconcilation]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Stock_Reconcilation]
	@Id as int,
	@startdate as datetime,
	@enddate as datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Id,ItemName,Code,OpeningStock,TotalQuantity,SUM(PurchaseQuantity) as Purchase, SUM(SalesQuantity) as Sales from View_StockReconciliations where Id=@Id and PurchaseInvoiceDate between @startdate and @enddate and SalesInvoiceDate between @startdate and @enddate group by Id,ItemName,Code,OpeningStock,TotalQuantity
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectDateWiseData]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_SelectDateWiseData] 
	-- Add the parameters for the stored procedure here
	@startDate as datetime,
	@endDate as datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from View_Customer_Payment_SalesInvoice where InvoiceDate between @startDate and @endDate;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Daily_Sales_Registers]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Daily_Sales_Registers]
	-- Add the parameters for the stored procedure here
	@startdate as datetime,
	@enddate as datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   
	select * from View_Customer_Payment_SalesInvoice where InvoiceDate between @startdate and @enddate;
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerWiseReports]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CustomerWiseReports]
	@cust_id as int,
	@startdate as date,
	@enddate as date


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET NOCOUNT ON;
	DECLARE @quantitySum int
	DECLARE @TotalAmount float
	DECLARE @itemName varchar(250)
	DECLARE @ItemId INT
	DECLARE @salePrice float
	DECLARE  @Id int
	DECLARE @COUNT INT
	DECLARE @innerStartDT date
	DECLARE @innerEndDt date
	DECLARE @count1st INT
	DECLARE @CustId INT
	DECLARE @Tempitem INT
	DECLARE @SelectItemId INT
	Declare @ItemCount int
	declare @i int
	--set @i=1
	declare @innerI int
	--set @i=1
	set @innerStartDT=@startdate
	set @innerEndDt=@enddate
	set @CustId=@cust_id
	Declare @CustWise_Report Table (Sdate datetime,ItemId int,ItemName nvarchar(250),SalesPrice float,TotalQuantity int,TotalAmount float)
	

    WHILE CONVERT(datetime, @startdate, 120) <=   CONVERT(datetime, @enddate, 120)                
					BEGIN 
					
						IF EXISTS (select * from View_Customer_Item_Invoice where InsertedDate= @innerStartDT AND Customer_Id=@CustId)
							BEGIN
							      
									select @COUNT=COUNT(*) from View_Customer_Item_Invoice where InsertedDate= @innerStartDT AND Customer_Id=@CustId;
								 	SELECT @COUNT AS 'COUNT'       
							
				            				IF @COUNT=1
													BEGIN
													--		print 'If'
													         select @quantitySum=sum(Quantity),@TotalAmount=sum(TotalAmount),@itemName=ItemName,@ItemId=Item_Id,@salePrice=SalePrice from View_Customer_Item_Invoice where InsertedDate= @innerStartDT and Customer_Id=@CustId GROUP BY ItemName,Item_Id,SalePrice
															 insert into @CustWise_Report(Sdate,ItemId,ItemName,SalesPrice,TotalQuantity,TotalAmount)
															 values(@startdate,@ItemId,@itemName,@salePrice,@quantitySum,@TotalAmount)
																	
													End
												Else
															
													BEGIN
															
															--   print 'else'
															set @i=1
															  
															 while CONVERT(int,@i)<CONVERT(int,@COUNT)
															  begin
																    select top (@i) @Id=Id,@ItemId=Item_Id from View_Customer_Item_Invoice where InsertedDate= @innerStartDT AND Customer_Id=@CustId;
																--  select @Id as 'Id'
																   select @ItemCount=COUNT(*) from View_Customer_Item_Invoice where InsertedDate= @innerStartDT AND Customer_Id=@CustId and Item_Id=@ItemId
																	select @ItemCount as 'itemCount'
																	--select @COUNT as 'Count'
																	select @i as 'ib4Start'
																   set @innerI=1
																		
																   if @ItemCount>1
																		while CONVERT(int,@innerI)<CONVERT(int,@ItemCount)
																			Begin
																					Set @innerI=@ItemCount+1
																			   
																					
																					select @quantitySum=sum(Quantity),@TotalAmount=sum(TotalAmount),@itemName=ItemName,@ItemId=Item_Id,@salePrice=SalePrice from View_Customer_Item_Invoice where InsertedDate= @innerStartDT and Customer_Id=@CustId and Item_Id=@ItemId GROUP BY ItemName,Item_Id,SalePrice;
																					insert into @CustWise_Report(Sdate,ItemId,ItemName,SalesPrice,TotalQuantity,TotalAmount)
																					values(@startdate,@ItemId,@itemName,@salePrice,@quantitySum,@TotalAmount)
																					--select @Id=@Id-1
																					--select @i=5
																					--print 'ifcount'
																					--select @ItemCount as 'itemccc'
																				    select @i=@innerI+1
																					select @i as 'i'
																					
																			End
																			
																		else
																		
																			Begin
																					select @i=@i+1
																			   
																					
																					select @quantitySum=sum(Quantity),@TotalAmount=sum(TotalAmount),@itemName=ItemName,@ItemId=Item_Id,@salePrice=SalePrice from View_Customer_Item_Invoice where InsertedDate= @innerStartDT and Customer_Id=@CustId and Item_Id=@ItemId GROUP BY ItemName,Item_Id,SalePrice;
																					insert into @CustWise_Report(Sdate,ItemId,ItemName,SalesPrice,TotalQuantity,TotalAmount)
																					values(@startdate,@ItemId,@itemName,@salePrice,@quantitySum,@TotalAmount)
																					--select @Id=@Id-1
																					--select @i=@i+1
																					--select @i as 'i'
																					--print 'elsecount'
																						
																			End
																		
																	
															 end	
													
													End
												
						  	END
									select @startdate=DateAdd(DD, 1, @startdate)	-- Get next day     
						
						     
									set @innerStartDT=@startdate
						    
					END 
				
			
			
 select * from @CustWise_Report
   
   
END


-- exec SP_CustomerWiseReports 7,'2015-12-30','2016-1-31'
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerItemWiseDates]    Script Date: 01/13/2016 14:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CustomerItemWiseDates]

	-- Add the parameters for the stored procedure here
	@startdate as datetime,
	@enddate as datetime,
	@custID as int,
	@itemID as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from  dbo.View_Customer_Item_Invoice where InsertedDate between @startdate and @enddate and Customer_Id=@custID and Item_Id=@itemID;
END
GO
/****** Object:  ForeignKey [FK_BankBankAccount_Bank]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[BankBankAccount]  WITH CHECK ADD  CONSTRAINT [FK_BankBankAccount_Bank] FOREIGN KEY([Banks_Id])
REFERENCES [dbo].[Banks] ([Id])
GO
ALTER TABLE [dbo].[BankBankAccount] CHECK CONSTRAINT [FK_BankBankAccount_Bank]
GO
/****** Object:  ForeignKey [FK_BankBankAccount_BankAccount]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[BankBankAccount]  WITH CHECK ADD  CONSTRAINT [FK_BankBankAccount_BankAccount] FOREIGN KEY([BankAccounts_Id])
REFERENCES [dbo].[BankAccounts] ([Id])
GO
ALTER TABLE [dbo].[BankBankAccount] CHECK CONSTRAINT [FK_BankBankAccount_BankAccount]
GO
/****** Object:  ForeignKey [FK_State_City]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_State_City] FOREIGN KEY([State_ID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_State_City]
GO
/****** Object:  ForeignKey [FK_Companies_City]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Companies] CHECK CONSTRAINT [FK_Companies_City]
GO
/****** Object:  ForeignKey [FK_Companies_Country]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_Country] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Companies] CHECK CONSTRAINT [FK_Companies_Country]
GO
/****** Object:  ForeignKey [FK_Companies_State]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_State] FOREIGN KEY([State_ID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[Companies] CHECK CONSTRAINT [FK_Companies_State]
GO
/****** Object:  ForeignKey [FK_Customer_Item_Invoice_Customer]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Customer_Item_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Item_Invoice_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Customer_Item_Invoice] CHECK CONSTRAINT [FK_Customer_Item_Invoice_Customer]
GO
/****** Object:  ForeignKey [FK_Customer_Item_Invoice_Item]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Customer_Item_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Item_Invoice_Item] FOREIGN KEY([Item_Id])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Customer_Item_Invoice] CHECK CONSTRAINT [FK_Customer_Item_Invoice_Item]
GO
/****** Object:  ForeignKey [FK_CustomerPayments_Customer]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[CustomerPayments]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPayments_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CustomerPayments] CHECK CONSTRAINT [FK_CustomerPayments_Customer]
GO
/****** Object:  ForeignKey [FK_Customers_City]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_City]
GO
/****** Object:  ForeignKey [FK_DeliveryChallan_City]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[DeliveryChallan]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryChallan_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[DeliveryChallan] CHECK CONSTRAINT [FK_DeliveryChallan_City]
GO
/****** Object:  ForeignKey [FK_DeliveryChallan_Customer]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[DeliveryChallan]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryChallan_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[DeliveryChallan] CHECK CONSTRAINT [FK_DeliveryChallan_Customer]
GO
/****** Object:  ForeignKey [FK_ForgetPasswordRoleOfUsers_ForgetPassword]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[ForgetPasswordRoleOfUsers]  WITH CHECK ADD  CONSTRAINT [FK_ForgetPasswordRoleOfUsers_ForgetPassword] FOREIGN KEY([ForgetPasswords_Id])
REFERENCES [dbo].[ForgetPasswords] ([Id])
GO
ALTER TABLE [dbo].[ForgetPasswordRoleOfUsers] CHECK CONSTRAINT [FK_ForgetPasswordRoleOfUsers_ForgetPassword]
GO
/****** Object:  ForeignKey [FK_ForgetPasswordRoleOfUsers_RoleOfUsers]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[ForgetPasswordRoleOfUsers]  WITH CHECK ADD  CONSTRAINT [FK_ForgetPasswordRoleOfUsers_RoleOfUsers] FOREIGN KEY([RoleOfUsers_Id])
REFERENCES [dbo].[RoleOfUsers] ([Id])
GO
ALTER TABLE [dbo].[ForgetPasswordRoleOfUsers] CHECK CONSTRAINT [FK_ForgetPasswordRoleOfUsers_RoleOfUsers]
GO
/****** Object:  ForeignKey [FK_Items_Category]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Category]
GO
/****** Object:  ForeignKey [FK_NewStocks_City]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[NewStocks]  WITH CHECK ADD  CONSTRAINT [FK_NewStocks_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[NewStocks] CHECK CONSTRAINT [FK_NewStocks_City]
GO
/****** Object:  ForeignKey [FK_NewUnits_FromUnits]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[NewUnits]  WITH CHECK ADD  CONSTRAINT [FK_NewUnits_FromUnits] FOREIGN KEY([FromUnit])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[NewUnits] CHECK CONSTRAINT [FK_NewUnits_FromUnits]
GO
/****** Object:  ForeignKey [FK_NewUnits_ToUnits]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[NewUnits]  WITH CHECK ADD  CONSTRAINT [FK_NewUnits_ToUnits] FOREIGN KEY([ToUnit])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[NewUnits] CHECK CONSTRAINT [FK_NewUnits_ToUnits]
GO
/****** Object:  ForeignKey [FK_PartyPayments_Customer]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[PartyPayments]  WITH CHECK ADD  CONSTRAINT [FK_PartyPayments_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[PartyPayments] CHECK CONSTRAINT [FK_PartyPayments_Customer]
GO
/****** Object:  ForeignKey [FK_PaymentCustomerPayment_Payment]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[PaymentCustomerPayment]  WITH CHECK ADD  CONSTRAINT [FK_PaymentCustomerPayment_Payment] FOREIGN KEY([Payments_Id])
REFERENCES [dbo].[Payments] ([Id])
GO
ALTER TABLE [dbo].[PaymentCustomerPayment] CHECK CONSTRAINT [FK_PaymentCustomerPayment_Payment]
GO
/****** Object:  ForeignKey [FK_PaymentSupplier_Payment]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[PaymentSupplier]  WITH CHECK ADD  CONSTRAINT [FK_PaymentSupplier_Payment] FOREIGN KEY([Payments_Id])
REFERENCES [dbo].[Payments] ([Id])
GO
ALTER TABLE [dbo].[PaymentSupplier] CHECK CONSTRAINT [FK_PaymentSupplier_Payment]
GO
/****** Object:  ForeignKey [FK_PurchaseInvoices_City]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[PurchaseInvoices]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseInvoices_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[PurchaseInvoices] CHECK CONSTRAINT [FK_PurchaseInvoices_City]
GO
/****** Object:  ForeignKey [FK_PurchaseInvoices_Supplier]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[PurchaseInvoices]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseInvoices_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[PurchaseInvoices] CHECK CONSTRAINT [FK_PurchaseInvoices_Supplier]
GO
/****** Object:  ForeignKey [FK_QuantityAndPrice_Unit]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[QuantityAndPrice]  WITH CHECK ADD  CONSTRAINT [FK_QuantityAndPrice_Unit] FOREIGN KEY([Unit_Id])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[QuantityAndPrice] CHECK CONSTRAINT [FK_QuantityAndPrice_Unit]
GO
/****** Object:  ForeignKey [FK_SalesInvoiceCustomer_Customer]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[SalesInvoiceCustomer]  WITH CHECK ADD  CONSTRAINT [FK_SalesInvoiceCustomer_Customer] FOREIGN KEY([Customers_Id])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[SalesInvoiceCustomer] CHECK CONSTRAINT [FK_SalesInvoiceCustomer_Customer]
GO
/****** Object:  ForeignKey [FK_SalesInvoices_City]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[SalesInvoices]  WITH CHECK ADD  CONSTRAINT [FK_SalesInvoices_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[SalesInvoices] CHECK CONSTRAINT [FK_SalesInvoices_City]
GO
/****** Object:  ForeignKey [FK_SalesInvoices_Customer]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[SalesInvoices]  WITH CHECK ADD  CONSTRAINT [FK_SalesInvoices_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[SalesInvoices] CHECK CONSTRAINT [FK_SalesInvoices_Customer]
GO
/****** Object:  ForeignKey [FK_Services_Category]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Category]
GO
/****** Object:  ForeignKey [FK_Country_State]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_Country_State] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_Country_State]
GO
/****** Object:  ForeignKey [FK_SubMenuMenu]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[SubMenus]  WITH CHECK ADD  CONSTRAINT [FK_SubMenuMenu] FOREIGN KEY([Menu_Id])
REFERENCES [dbo].[Menus] ([Id])
GO
ALTER TABLE [dbo].[SubMenus] CHECK CONSTRAINT [FK_SubMenuMenu]
GO
/****** Object:  ForeignKey [FK_Supplier_Item_Invoice_Item]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Supplier_Item_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Item_Invoice_Item] FOREIGN KEY([Item_Id])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[Supplier_Item_Invoice] CHECK CONSTRAINT [FK_Supplier_Item_Invoice_Item]
GO
/****** Object:  ForeignKey [FK_Supplier_Item_Invoice_Supplier]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Supplier_Item_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Item_Invoice_Supplier] FOREIGN KEY([Supplier_Id])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Supplier_Item_Invoice] CHECK CONSTRAINT [FK_Supplier_Item_Invoice_Supplier]
GO
/****** Object:  ForeignKey [FK_SupplierSupplyerPayment]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[SupplierPayments]  WITH CHECK ADD  CONSTRAINT [FK_SupplierSupplyerPayment] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[SupplierPayments] CHECK CONSTRAINT [FK_SupplierSupplyerPayment]
GO
/****** Object:  ForeignKey [FK_Users_Roles]    Script Date: 01/13/2016 14:56:28 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[RoleOfUsers] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
