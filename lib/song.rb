class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = [ ]
  @@genres = [ ]
  
  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  
 
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.count
    @@count
  end
  
   def self.genres
    @@genres.uniq!
  end
  
   def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] #if the genre is already in the hash
        genre_count[genre] += 1
      else 
        genre_count[genre] = 1
      end
    genre_count
    end
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] #if the artist is already in the hash
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end

    
  