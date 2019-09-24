class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    
    