require 'sqlite3'

# opens the database
DATABASE_PATH = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT T.Name, A.Title , AR.Name FROM Track T
JOIN Album A ON T.AlbumId =  A.AlbumId
JOIN Artist AR ON A.ArtistId = AR.ArtistId;")
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  stat_hash = {}
  number = db.execute("SELECT COUNT(*), AVG(milliseconds)
FROM Track
JOIN Genre ON  Track.GenreId=Genre.GenreId
WHERE Genre.Name LIKE'category';")
stat_hash["Number of tracks"] = number[0][0]
stat_hash["Average Milliseconds"] = number[0][1]

end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
  db.execute("SELECT Artist.Name , COUNT(Track.Trackid) AS Compteur
FROM Artist
JOIN Album ON Album.ArtistId = Artist.ArtistId
JOIN Track ON  Track.AlbumId = Album.AlbumId
JOIN Genre ON Genre.genreId = Track.GenreId
WHERE Genre.Name LIKE 'rock' GROUP BY Artist.Name ORDER BY Compteur DESC LIMIT 5;")
end

p top_five_rock_artists(db)