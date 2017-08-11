require "pry"

class Artist

  attr_accessor :name, :song

@@all = []

def self.all
  @@all
end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    unless @@all.detect {|artist| artist.name == name}
      new_artist = self.new(name)
    else
      self.all.detect {|artist| artist.name == name}
  end
end

def print_songs
  @songs.each do |song|
      puts song.name
    end
end

end
