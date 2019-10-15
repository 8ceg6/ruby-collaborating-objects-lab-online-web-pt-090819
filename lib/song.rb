require 'pry'
class Song 
 attr_accessor :name, :artist
 
@@all =[]
 def initialize(name)
   @name = name
   @artist = artist
   @@all << self
 end
 
 def self.all
   @@all 
 end  
 
 def self.new_by_filename(fname)
      artist,song = fname.split (" - ")
      new_song = self.new(song)
      new_song.artist = artist
      new_song
 end
end