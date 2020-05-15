class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name,
    @artist = artist,
    @genre = genre
    @@count += 1
    @@genres << genre
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
      if result[genre]
        result[genre] += 1
      else
        result[genre] = 1
      end
    end
    # @@genres.uniq.each {|genre| result[genre] = 0}
    
    # @@genres.each {|genre| result[genre] += 1}
    result
  end
end

a = Song.new("blah", "Nirvana", "Grunge")
a = Song.new("blah", "Nirvana", "rap")
a = Song.new("blah", "Nirvana", "rock")
a = Song.new("blah", "Nirvana", "country")
puts Song.genre_count
