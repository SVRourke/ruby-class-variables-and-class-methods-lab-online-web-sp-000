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

    @@genres.uniq.each do |genre|
      result[genre] = 0
    end
    puts result

    @@genres.each {|genre| result[genre] += 1}


  end


end

a = Song.new("blah", "Nirvana", "Grunge")
a = Song.new("blah", "Nirvana", "rap")
a = Song.new("blah", "Nirvana", "rock")
a = Song.new("blah", "Nirvana", "country")
puts Song.genre_count
