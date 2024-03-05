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
    x
  end

  # def multi_photo_artists
  #   x
  # end

  # def country_specific_photos(country)
    # x
  # end

end
