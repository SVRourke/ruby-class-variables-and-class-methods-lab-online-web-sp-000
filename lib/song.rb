class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name,
    @artist = artist,
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    result = Hash.new
    @@genres.each do |genre|
      result[genre] ? result[genre] += 1 : result[genre] = 1
    end
    result
  end

  def self.artist_count
    result = Hash.new
    @@artists.each do |artist|
      result[artist] ? result[artist] += 1 : result[artist] = 1
    end
    result
  end

end

a = Song.new("blah", "Nirvana", "Grunge")
a = Song.new("blah", "Nirvana", "rap")
a = Song.new("blah", "Nirvana", "rock")
a = Song.new("blah", "Nirvana", "country")
puts Song.genre_count
