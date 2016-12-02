class Artist
  attr_accessor :name, :songs, :song

  @@all = []

  def self.all
    @@all
  end

  def self.find_artist(name)
    all.find {|artist_data| artist_data.name == name}
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    find_artist(name) ? find_artist(name) :  Artist.new(name)
  end

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|a| puts a.name}
  end
end
