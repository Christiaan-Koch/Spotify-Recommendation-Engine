CREATE DATABASE SpotifyRecommendationEngine;
GO

CREATE TABLE SpotifyRecommendationEngine.dbo.SpotifyUser (
	UserID INT PRIMARY KEY IDENTITY(1,1),
	Email NVARCHAR(255) NOT NULL UNIQUE,
	UserPassword NVARCHAR(255) NOT NULL
)

CREATE TABLE SpotifyRecommendationEngine.dbo.ContentType (
	ContentTypeID INT PRIMARY KEY IDENTITY(1,1),
	Description NVARCHAR(255)
)

/*Content excluded from every recommendation made by the application*/
CREATE TABLE SpotifyRecommendationEngine.dbo.ExcludedContent (
	ContentID INT PRIMARY KEY IDENTITY(1,1),
	UserID INT NOT NULL,
	Name NVARCHAR(255),
	ContentTypeID INT NOT NULL,
	FOREIGN KEY(UserID) REFERENCES SpotifyRecommendationEngine.dbo.SpotifyUser(UserID),
	FOREIGN KEY(ContentTypeID) REFERENCES SpotifyRecommendationEngine.dbo.ContentType(ContentTypeID)
)

/*Content included in users' recommendations*/
CREATE TABLE SpotifyRecommendationEngine.dbo.IncludedContent (
	ContentID INT PRIMARY KEY IDENTITY(1,1),
	UserID INT NOT NULL,
	Name NVARCHAR(255),
	ContentTypeID INT NOT NULL,
	FOREIGN KEY(UserID) REFERENCES SpotifyRecommendationEngine.dbo.SpotifyUser(UserID),
	FOREIGN KEY(ContentTypeID) REFERENCES SpotifyRecommendationEngine.dbo.ContentType(ContentTypeID)
)
GO

INSERT INTO SpotifyRecommendationEngine.dbo.ContentType VALUES
	('Song'),
	('Artist'),
	('Album'),
	('Category');