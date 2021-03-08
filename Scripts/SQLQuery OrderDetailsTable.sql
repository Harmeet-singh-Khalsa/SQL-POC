USE [Eccommerce]
GO

/****** Object:  Table [dbo].[Order_DetailsTable]    Script Date: 3/6/2021 6:48:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Order_DetailsTable](
	[Order_Details_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_ID] [int] NULL,
	[Product_Qty] [int] NULL,
	[Product_Price] [int] NULL,
	[Order_ID] [nvarchar](50) NULL,
	[Subtotal] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Order_DetailsTable]  WITH CHECK ADD  CONSTRAINT [FK_Order_DetailsTable_OrderTable] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[OrderTable] ([Order_ID])
GO

ALTER TABLE [dbo].[Order_DetailsTable] CHECK CONSTRAINT [FK_Order_DetailsTable_OrderTable]
GO

ALTER TABLE [dbo].[Order_DetailsTable]  WITH CHECK ADD  CONSTRAINT [FK_Order_DetailsTable_ProductTable] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[ProductTable] ([Product_ID])
GO

ALTER TABLE [dbo].[Order_DetailsTable] CHECK CONSTRAINT [FK_Order_DetailsTable_ProductTable]
GO


