class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_file = filename.split(/ - /)
    new_song = Song.new(split_file[1])
    artist_instance = Artist.find_or_create_by_name(split_file[0])
    new_song.artist_name=(artist_instance)
    artist_instance.add_song(new_song)
    new_song
  end

  def artist_name=(name)
    @artist = name
  end

end
