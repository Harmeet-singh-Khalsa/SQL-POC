USE [Eccommerce]
GO

/****** Object:  Table [dbo].[ProductTable]    Script Date: 3/6/2021 6:50:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductTable](
	[Product_ID] [int] NOT NULL,
	[Product_Name] [nvarchar](50) NULL,
	[Prodecut_Desc] [nvarchar](max) NULL,
	[Image_1] [nvarchar](50) NULL,
	[Image_2] [nvarchar](50) NULL,
	[Image_3] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Stock] [int] NULL,
	[Category_ID] [int] NOT NULL,
 CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductTable]  WITH CHECK ADD  CONSTRAINT [FK_ProductTable_CategoryTable] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[CategoryTable] ([Category_ID])
GO

ALTER TABLE [dbo].[ProductTable] CHECK CONSTRAINT [FK_ProductTable_CategoryTable]
GO


