require 'pry'

class Artist 
  
  attr_accessor :name 
  @@all = []
  
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @@all << song 
    @songs << song
    song.artist = self 
    #binding.pry
  end

  def songs
    @songs
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@all << song 
    song.artist = self
  end
  
  def self.song_count
    @@all.count  
    #binding.pry
  end 
end 