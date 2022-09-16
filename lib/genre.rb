class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |s| s.genre = name }
  end

  def artists
    artists = []
    self.songs.map { |s| artists << s.artist }
    artists.uniq
  end
end
