class MP3Importer

  attr_accessor :path


  def initialize(path)
    @path = path
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
    end


  def files
    files_paths = Dir.glob(File.join(@path, "*"))
    files_paths.each {|file| file.slice!("./spec/fixtures/mp3s/")}
  end

end
