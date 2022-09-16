class Artist
  attr_accessor :name
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |s| s.artist.name == name }
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    genres = []
    self.songs.select{ |s| genres << s.genre }
    genres.uniq
  end
end