USE [Eccommerce]
GO

/****** Object:  Table [dbo].[OrderTable]    Script Date: 3/6/2021 6:49:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderTable](
	[Order_ID] [nvarchar](50) NOT NULL,
	[Order_No] [int] IDENTITY(1,1) NOT NULL,
	[Order_Date] [datetime] NULL,
	[Order_Total] [int] NULL,
	[Customer_ID] [int] NULL,
	[Shipping_Date] [datetime] NULL,
	[Is_Delivered] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderTable] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderTable]  WITH CHECK ADD  CONSTRAINT [FK_OrderTable_CustomerTable] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[CustomerTable] ([Customer_ID])
GO

ALTER TABLE [dbo].[OrderTable] CHECK CONSTRAINT [FK_OrderTable_CustomerTable]
GO


