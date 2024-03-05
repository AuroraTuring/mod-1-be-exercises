class Photograph
  attr_reader :id,
              :name,
              :artist_id,
              :year,
              :photographs

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @artist_id = attributes[:artist_id]
    @year = attributes[:year]
    @photographs = attributes[:photographs]
  end

  # def method

  # end

end
