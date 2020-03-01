CREATE TABLE [dbo].[TestSPID](
	[EMPID] [char](6) NOT NULL,
	[ID] [nvarchar](20) NULL,
 CONSTRAINT [PK_TestSPID] PRIMARY KEY CLUSTERED 
(
	[EMPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
