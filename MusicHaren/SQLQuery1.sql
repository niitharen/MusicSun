
/****** Object:  Table [dbo].[Albums]    Script Date: 2016/7/30 21:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[AlbumId] [int] IDENTITY(1,1) NOT NULL,
	[GenreId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[Title] [nvarchar](160) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[AlbumArtUrl] [nvarchar](1024) NULL,
 CONSTRAINT [PK_dbo.Albums] PRIMARY KEY CLUSTERED 
(
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artists]    Script Date: 2016/7/30 21:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists](
	[ArtistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Artists] PRIMARY KEY CLUSTERED 
(
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2016/7/30 21:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [nvarchar](max) NULL,
	[AlbumId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Carts] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genres]    Script Date: 2016/7/30 21:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[GenreId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Genres] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2016/7/30 21:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[AlbumId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2016/7/30 21:39:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Username] [nvarchar](max) NULL,
	[FullName] [nvarchar](160) NOT NULL,
	[Address] [nvarchar](70) NOT NULL,
	[City] [nvarchar](40) NOT NULL,
	[Province] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Albums] ON 

GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (1, 1, 1, N'The Best Of Men At Work', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (2, 1, 4, N'For Those About To Rock We Salute You', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (3, 1, 4, N'Let There Be Rock', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (4, 1, 5, N'Balls to the Wall', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (5, 1, 5, N'Restless and Wild', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (6, 1, 7, N'Big Ones', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (7, 1, 9, N'Jagged Little Pill', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (8, 1, 10, N'Facelift', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (9, 1, 15, N'Audioslave', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (10, 1, 37, N'Chronicle, Vol. 1', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (11, 1, 37, N'Chronicle, Vol. 2', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (12, 1, 38, N'Into The Light', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (13, 1, 39, N'Come Taste The Band', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (14, 1, 39, N'Deep Purple In Rock', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (15, 1, 39, N'Fireball', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (16, 1, 39, N'Machine Head', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (17, 1, 39, N'MK III The Final Concerts [Disc 1]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (18, 1, 39, N'Purpendicular', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (19, 1, 39, N'Slaves And Masters', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (20, 1, 39, N'Stormbringer', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (21, 1, 39, N'The Battle Rages On', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (22, 1, 39, N'The Final Concerts (Disc 2)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (23, 1, 43, N'Un-Led-Ed', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (24, 1, 50, N'King For A Day Fool For A Lifetime', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (25, 1, 52, N'In Your Honor [Disc 1]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (26, 1, 52, N'In Your Honor [Disc 2]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (27, 1, 52, N'The Colour And The Shape', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (28, 1, 53, N'Bongo Fury', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (29, 1, 59, N'Appetite for Destruction', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (30, 1, 59, N'Use Your Illusion I', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (31, 1, 61, N'A Matter of Life and Death', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (32, 1, 61, N'Brave New World', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (33, 1, 61, N'Fear Of The Dark', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (34, 1, 61, N'Live At Donington 1992 (Disc 1)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (35, 1, 61, N'Live At Donington 1992 (Disc 2)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (36, 1, 61, N'Rock In Rio [CD2]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (37, 1, 61, N'The Number of The Beast', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (38, 1, 61, N'The X Factor', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (39, 1, 61, N'Virtual XI', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (40, 1, 63, N'Emergency On Planet Earth', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (41, 1, 64, N'Are You Experienced?', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (42, 1, 65, N'Surfing with the Alien (Remastered)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (43, 1, 70, N'Greatest Kiss', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (44, 1, 70, N'Unplugged [Live]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (45, 1, 71, N'BBC Sessions [Disc 1] [Live]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (46, 1, 71, N'BBC Sessions [Disc 2] [Live]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (47, 1, 71, N'Coda', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (48, 1, 71, N'Houses Of The Holy', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (49, 1, 71, N'In Through The Out Door', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (50, 1, 71, N'IV', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (51, 1, 71, N'Led Zeppelin I', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (52, 1, 71, N'Led Zeppelin II', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (53, 1, 71, N'Led Zeppelin III', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (54, 1, 71, N'Physical Graffiti [Disc 1]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (55, 1, 71, N'Physical Graffiti [Disc 2]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (56, 1, 71, N'Presence', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (57, 1, 71, N'The Song Remains The Same (Disc 1)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (58, 1, 71, N'The Song Remains The Same (Disc 2)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (59, 1, 73, N'Greatest Hits', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (60, 1, 77, N'Misplaced Childhood', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (61, 1, 88, N'Nevermind', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (62, 1, 89, N'Compositores', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (63, 1, 93, N'Bark at the Moon (Remastered)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (64, 1, 93, N'Blizzard of Ozz', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (65, 1, 93, N'Diary of a Madman (Remastered)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (66, 1, 93, N'No More Tears (Remastered)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (67, 1, 93, N'Speak of the Devil', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (68, 1, 94, N'Walking Into Clarksdale', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (69, 1, 95, N'The Beast Live', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (70, 1, 96, N'Live On Two Legs [Live]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (71, 1, 96, N'Riot Act', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (72, 1, 96, N'Ten', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (73, 1, 96, N'Vs.', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (74, 1, 97, N'Dark Side Of The Moon', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (75, 1, 98, N'Greatest Hits I', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (76, 1, 98, N'Greatest Hits II', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (77, 1, 98, N'News Of The World', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (78, 1, 99, N'New Adventures In Hi-Fi', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (79, 1, 100, N'Raul Seixas', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (80, 1, 101, N'By The Way', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (81, 1, 101, N'Californication', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (82, 1, 104, N'Retrospective I (1974-1980)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (83, 1, 105, N'Santana - As Years Go By', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (84, 1, 105, N'Santana Live', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (85, 1, 105, N'Supernatural', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (86, 1, 109, N'Maquinarama', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (87, 1, 109, N'O Samba Poconé', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (88, 1, 110, N'A-Sides', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (89, 1, 113, N'Core', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (90, 1, 116, N'[1997] Black Light Syndrome', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (91, 1, 119, N'Beyond Good And Evil', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (92, 1, 120, N'The Doors', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (93, 1, 122, N'The Police Greatest Hits', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (94, 1, 123, N'Every Kind of Light', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (95, 1, 124, N'Hot Rocks, 1964-1971 (Disc 1)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (96, 1, 124, N'No Security', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (97, 1, 124, N'Voodoo Lounge', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (98, 1, 125, N'My Generation - The Very Best Of The Who', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (99, 1, 128, N'Achtung Baby', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (100, 1, 128, N'B-Sides 1980-1990', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (101, 1, 128, N'How To Dismantle An Atomic Bomb', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (102, 1, 128, N'Pop', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (103, 1, 128, N'Rattle And Hum', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (104, 1, 128, N'The Best Of 1980-1990', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (105, 1, 128, N'War', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (106, 1, 128, N'Zooropa', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (107, 1, 130, N'Diver Down', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (108, 1, 130, N'The Best Of Van Halen, Vol. I', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (109, 1, 130, N'Van Halen III', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (110, 1, 130, N'Van Halen', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (111, 1, 132, N'Contraband', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (112, 2, 2, N'A Copland Celebration, Vol. I', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (113, 2, 6, N'Górecki: Symphony No. 3', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (114, 2, 16, N'The Last Night of the Proms', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (115, 2, 17, N'Sibelius: Finlandia', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (116, 2, 18, N'Mozart: Symphonies Nos. 40 & 41', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (117, 2, 22, N'Carmina Burana', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (118, 2, 23, N'A Soprano Inspired', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (119, 2, 30, N'Scheherazade', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (120, 2, 34, N'SCRIABIN: Vers la flamme', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (121, 2, 45, N'Adams, John: The Chairman Dances', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (122, 2, 47, N'Pachelbel: Canon & Gigue', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (123, 2, 49, N'Respighi:Pines of Rome', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (124, 2, 49, N'Strauss: Waltzes', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (125, 2, 58, N'Nielsen: The Six Symphonies', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (126, 2, 62, N'Mascagni: Cavalleria Rusticana', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (127, 2, 69, N'Weill: The Seven Deadly Sins', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (128, 2, 74, N'Tchaikovsky: The Nutcracker', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (129, 2, 79, N'Szymanowski: Piano Works, Vol. 1', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (130, 2, 81, N'Berlioz: Symphonie Fantastique', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (131, 2, 81, N'Prokofiev: Romeo & Juliet', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (132, 2, 86, N'Mozart: Chamber Music', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (133, 2, 87, N'The Best of Beethoven', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (134, 2, 91, N'Bach: The Brandenburg Concertos', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (135, 2, 102, N'Purcell: The Fairy Queen', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (136, 2, 103, N'Haydn: Symphonies 99 - 104', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (137, 2, 106, N'Handel: The Messiah (Highlights)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (138, 2, 107, N'Prokofiev: Symphony No.1', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (139, 2, 108, N'Wagner: Favourite Overtures', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (140, 2, 117, N'South American Getaway', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (141, 2, 121, N'English Renaissance', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (142, 2, 127, N'Bach: Toccata & Fugue in D Minor', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (143, 2, 134, N'Bach: Goldberg Variations', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (144, 2, 135, N'Bartok: Violin & Viola Concertos', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (145, 2, 136, N'Bach: The Cello Suites', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (146, 3, 3, N'Worlds', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (147, 3, 8, N'Quiet Songs', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (148, 3, 13, N'Warner 25 Anos', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (149, 3, 19, N'The Best Of Billy Cobham', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (150, 3, 40, N'Outbreak', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (151, 3, 55, N'Quanta Gente Veio ver--Bônus De Carnaval', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (152, 3, 60, N'Blue Moods', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (153, 3, 82, N'Miles Ahead', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (154, 3, 82, N'The Essential Miles Davis [Disc 1]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (155, 3, 82, N'The Essential Miles Davis [Disc 2]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (156, 3, 111, N'Heart of the Night', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (157, 3, 111, N'Morning Dance', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (158, 4, 11, N'Frank', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (159, 4, 131, N'Axé Bahia 2001', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (160, 5, 12, N'Ring My Bell', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (161, 5, 29, N'Le Freak', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (162, 5, 42, N'MacArthur Park Suite', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (163, 6, 13, N'Chill: Brazil (Disc 2)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (164, 6, 25, N'Prenda Minha', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (165, 6, 25, N'Sozinho Remix Ao Vivo', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (166, 6, 28, N'Cássia Eller - Sem Limite [Disc 1]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (167, 6, 31, N'Minha Historia', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (168, 6, 32, N'Afrociberdelia', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (169, 6, 32, N'Da Lama Ao Caos', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (170, 6, 36, N'Na Pista', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (171, 6, 41, N'Djavan Ao Vivo - Vol. 02', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (172, 6, 41, N'Djavan Ao Vivo - Vol. 1', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (173, 6, 44, N'The Best of Ed Motta', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (174, 6, 46, N'Elis Regina-Minha História', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (175, 6, 48, N'Unplugged', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (176, 6, 51, N'Deixa Entrar', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (177, 6, 54, N'Roda De Funk', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (178, 6, 55, N'Quanta Gente Veio Ver (Live)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (179, 6, 57, N'Meus Momentos', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (180, 6, 66, N'Jorge Ben Jor 25 Anos', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (181, 6, 67, N'Jota Quest-1995', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (182, 6, 72, N'Mais Do Mesmo', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (183, 6, 75, N'Duos II', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (184, 6, 76, N'Chill: Brazil (Disc 1)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (185, 6, 78, N'Barulhinho Bom', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (186, 6, 83, N'Milton Nascimento Ao Vivo', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (187, 6, 83, N'Minas', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (188, 6, 90, N'Olodum', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (189, 6, 92, N'Acústico MTV', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (190, 6, 92, N'Arquivo II', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (191, 6, 92, N'Arquivo Os Paralamas Do Sucesso', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (192, 6, 126, N'Serie Sem Limite (Disc 1)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (193, 6, 126, N'Serie Sem Limite (Disc 2)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (194, 6, 131, N'Sambas De Enredo 2001', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (195, 6, 131, N'Vozes do MPB', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (196, 6, 133, N'Vinicius De Moraes', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (197, 6, 137, N'Ao Vivo [IMPORT]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (198, 7, 14, N'Plays Metallica By Four Cellos', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (199, 7, 20, N'Alcohol Fueled Brewtality Live! [Disc 1]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (200, 7, 20, N'Alcohol Fueled Brewtality Live! [Disc 2]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (201, 7, 21, N'Black Sabbath Vol. 4 (Remaster)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (202, 7, 21, N'Black Sabbath', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (203, 7, 24, N'Chemical Wedding', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (204, 7, 56, N'Faceless', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (205, 7, 59, N'Use Your Illusion II', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (206, 7, 61, N'A Real Dead One', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (207, 7, 61, N'A Real Live One', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (208, 7, 61, N'Live After Death', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (209, 7, 61, N'No Prayer For The Dying', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (210, 7, 61, N'Piece Of Mind', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (211, 7, 61, N'Powerslave', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (212, 7, 61, N'Rock In Rio [CD1]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (213, 7, 61, N'Rock In Rio [CD2]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (214, 7, 61, N'Seventh Son of a Seventh Son', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (215, 7, 61, N'Somewhere in Time', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (216, 7, 61, N'The Number of The Beast', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (217, 7, 68, N'Living After Midnight', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (218, 7, 73, N'Greatest Hits', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (219, 7, 80, N'...And Justice For All', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (220, 7, 80, N'Black Album', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (221, 7, 80, N'Garage Inc. (Disc 1)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (222, 7, 80, N'Garage Inc. (Disc 2)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (223, 7, 80, N'Load', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (224, 7, 80, N'Master Of Puppets', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (225, 7, 80, N'ReLoad', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (226, 7, 80, N'Ride The Lightning', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (227, 7, 80, N'St. Anger', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (228, 7, 84, N'Motley Crue Greatest Hits', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (229, 7, 85, N'Ace Of Spades', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (230, 7, 93, N'Tribute', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (231, 7, 114, N'Mezmerize', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (232, 8, 15, N'Revelations', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (233, 8, 26, N'Cake: B-Sides and Rarities', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (234, 8, 27, N'Carried to Dust (Bonus Track Version)', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (235, 8, 33, N'Carry On', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (236, 8, 115, N'Temple of the Dog', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (237, 9, 35, N'Acústico MTV [Live]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (238, 9, 35, N'Cidade Negra - Hits', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (239, 9, 73, N'Greatest Hits', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (240, 9, 129, N'UB40 The Best Of - Volume Two [UK]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (241, 10, 48, N'The Cream Of Clapton', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (242, 10, 48, N'Unplugged', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (243, 10, 61, N'Iron Maiden', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (244, 10, 112, N'In Step', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (245, 10, 118, N'Live [Disc 1]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
INSERT [dbo].[Albums] ([AlbumId], [GenreId], [ArtistId], [Title], [Price], [AlbumArtUrl]) VALUES (246, 10, 118, N'Live [Disc 2]', CAST(8.99 AS Decimal(18, 2)), N'/Content/Images/placeholder.gif')
GO
SET IDENTITY_INSERT [dbo].[Albums] OFF
GO
SET IDENTITY_INSERT [dbo].[Artists] ON 

GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (1, N'Men At Work')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (2, N'Aaron Copland & London Symphony Orchestra')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (3, N'Aaron Goldberg')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (4, N'AC/DC')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (5, N'Accept')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (6, N'Adrian Leaper & Doreen de Feis')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (7, N'Aerosmith')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (8, N'Aisha Duo')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (9, N'Alanis Morissette')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (10, N'Alice In Chains')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (11, N'Amy Winehouse')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (12, N'Anita Ward')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (13, N'Antônio Carlos Jobim')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (14, N'Apocalyptica')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (15, N'Audioslave')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (16, N'Barry Wordsworth & BBC Concert Orchestra')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (17, N'Berliner Philharmoniker & Hans Rosbaud')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (18, N'Berliner Philharmoniker & Herbert Von Karajan')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (19, N'Billy Cobham')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (20, N'Black Label Society')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (21, N'Black Sabbath')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (22, N'Boston Symphony Orchestra & Seiji Ozawa')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (23, N'Britten Sinfonia, Ivor Bolton & Lesley Garrett')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (24, N'Bruce Dickinson')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (25, N'Caetano Veloso')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (26, N'Cake')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (27, N'Calexico')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (28, N'Cássia Eller')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (29, N'Chic')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (30, N'Chicago Symphony Orchestra & Fritz Reiner')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (31, N'Chico Buarque')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (32, N'Chico Science & Nação Zumbi')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (33, N'Chris Cornell')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (34, N'Christopher O''Riley')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (35, N'Cidade Negra')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (36, N'Cláudio Zoli')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (37, N'Creedence Clearwater Revival')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (38, N'David Coverdale')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (39, N'Deep Purple')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (40, N'Dennis Chambers')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (41, N'Djavan')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (42, N'Donna Summer')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (43, N'Dread Zeppelin')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (44, N'Ed Motta')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (45, N'Edo de Waart & San Francisco Symphony')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (46, N'Elis Regina')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (47, N'English Concert & Trevor Pinnock')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (48, N'Eric Clapton')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (49, N'Eugene Ormandy')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (50, N'Faith No More')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (51, N'Falamansa')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (52, N'Foo Fighters')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (53, N'Frank Zappa & Captain Beefheart')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (54, N'Funk Como Le Gusta')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (55, N'Gilberto Gil')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (56, N'Godsmack')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (57, N'Gonzaguinha')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (58, N'Göteborgs Symfoniker & Neeme Järvi')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (59, N'Guns N'' Roses')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (60, N'Incognito')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (61, N'Iron Maiden')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (62, N'James Levine')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (63, N'Jamiroquai')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (64, N'Jimi Hendrix')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (65, N'Joe Satriani')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (66, N'Jorge Ben')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (67, N'Jota Quest')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (68, N'Judas Priest')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (69, N'Kent Nagano and Orchestre de l''Opéra de Lyon')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (70, N'Kiss')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (71, N'Led Zeppelin')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (72, N'Legião Urbana')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (73, N'Lenny Kravitz')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (74, N'London Symphony Orchestra & Sir Charles Mackerras')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (75, N'Luciana Souza/Romero Lubambo')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (76, N'Marcos Valle')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (77, N'Marillion')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (78, N'Marisa Monte')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (79, N'Martin Roscoe')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (80, N'Metallica')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (81, N'Michael Tilson Thomas & San Francisco Symphony')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (82, N'Miles Davis')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (83, N'Milton Nascimento')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (84, N'Mötley Crüe')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (85, N'Motörhead')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (86, N'Nash Ensemble')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (87, N'Nicolaus Esterhazy Sinfonia')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (88, N'Nirvana')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (89, N'O Terço')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (90, N'Olodum')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (91, N'Orchestra of The Age of Enlightenment')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (92, N'Os Paralamas Do Sucesso')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (93, N'Ozzy Osbourne')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (94, N'Page & Plant')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (95, N'Paul D''Ianno')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (96, N'Pearl Jam')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (97, N'Pink Floyd')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (98, N'Queen')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (99, N'R.E.M.')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (100, N'Raul Seixas')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (101, N'Red Hot Chili Peppers')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (102, N'Roger Norrington, London Classical Players')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (103, N'Royal Philharmonic Orchestra & Sir Thomas Beecham')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (104, N'Rush')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (105, N'Santana')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (106, N'Scholars Baroque Ensemble')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (107, N'Sergei Prokofiev & Yuri Temirkanov')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (108, N'Sir Georg Solti & Wiener Philharmoniker')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (109, N'Skank')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (110, N'Soundgarden')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (111, N'Spyro Gyra')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (112, N'Stevie Ray Vaughan & Double Trouble')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (113, N'Stone Temple Pilots')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (114, N'System Of A Down')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (115, N'Temple of the Dog')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (116, N'Terry Bozzio, Tony Levin & Steve Stevens')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (117, N'The 12 Cellists of The Berlin Philharmonic')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (118, N'The Black Crowes')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (119, N'The Cult')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (120, N'The Doors')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (121, N'The King''s Singers')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (122, N'The Police')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (123, N'The Posies')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (124, N'The Rolling Stones')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (125, N'The Who')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (126, N'Tim Maia')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (127, N'Ton Koopman')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (128, N'U2')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (129, N'UB40')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (130, N'Van Halen')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (131, N'Various Artists')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (132, N'Velvet Revolver')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (133, N'Vinícius De Moraes')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (134, N'Wilhelm Kempff')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (135, N'Yehudi Menuhin')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (136, N'Yo-Yo Ma')
GO
INSERT [dbo].[Artists] ([ArtistId], [Name]) VALUES (137, N'Zeca Pagodinho')
GO
SET IDENTITY_INSERT [dbo].[Artists] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (1, N'Rock')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (2, N'Classical')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (3, N'Jazz')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (4, N'Pop')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (5, N'Disco')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (6, N'Latin')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (7, N'Metal')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (8, N'Alternative')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (9, N'Reggae')
GO
INSERT [dbo].[Genres] ([GenreId], [Name]) VALUES (10, N'Blues')
GO
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
ALTER TABLE [dbo].[Albums]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Albums_dbo.Artists_ArtistId] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artists] ([ArtistId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Albums] CHECK CONSTRAINT [FK_dbo.Albums_dbo.Artists_ArtistId]
GO
ALTER TABLE [dbo].[Albums]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Albums_dbo.Genres_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([GenreId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Albums] CHECK CONSTRAINT [FK_dbo.Albums_dbo.Genres_GenreId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Carts_dbo.Albums_AlbumId] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums] ([AlbumId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_dbo.Carts_dbo.Albums_AlbumId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.Albums_AlbumId] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums] ([AlbumId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.Albums_AlbumId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId]
GO
