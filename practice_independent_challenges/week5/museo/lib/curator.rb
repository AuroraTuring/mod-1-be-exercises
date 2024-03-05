class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    arty = @artists.find do |artist|
      artist.id == id
    end
  end

  def all_artists_and_photos
    result = Hash.new
    @artists.each do |artist|
      result[artist] ||= []
    end
    # @photographs.each do |photo|
    #   result[@artists.find_by(photo.artist_id)] << photo
    # end
    @photographs.each do |photo|
      artist = @artists.find { |artist| artist.id == |photo| photo.id }
      result[artist] << photo
    end
    result
  end

  # def multi_photo_artists
  #   x
  # end

  # def country_specific_photos(country)
    # x
  # end

end
