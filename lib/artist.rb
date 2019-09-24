class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def songs
    Song.all.find_all {|song| song.artist == self}
  end
  
  
  
end 
    