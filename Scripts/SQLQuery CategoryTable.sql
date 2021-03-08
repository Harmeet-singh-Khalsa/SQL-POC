USE [Eccommerce]
GO

/****** Object:  Table [dbo].[CategoryTable]    Script Date: 3/6/2021 6:44:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CategoryTable](
	[Category_ID] [int] NOT NULL,
	[Category_Nmae] [nvarchar](50) NULL,
	[Category_Image] [nvarchar](50) NULL,
	[Category_Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_CategoryTable] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


