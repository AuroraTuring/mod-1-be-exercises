require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe Curator do

  before(:each) do
    @curator = Curator.new
    @photo_1 = Photograph.new({
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "1",
      year: "1954"
      })
    @photo_2 = Photograph.new({
      id: "2",
      name: "Moonrise, Hernandez",
      artist_id: "2",
      year: "1941"
      })
    @artist_1 = Artist.new({
        id: "1",
        name: "Henri Cartier-Bresson",
        born: "1908",
        died: "2004",
        country: "France"
        })
    @artist_2 = Artist.new({
        id: "2",
        name: "Ansel Adams",
        born: "1902",
        died: "1984",
        country: "United States"
        })
  end

  it "exists" do
    expect(@curator).to be_a(Curator)
  end

  it "has attributes" do
    expect(@curator.photographs).to eq([])
  end

  it "can add photographs" do
    @curator.add_photograph(@photo_1)
    @curator.add_photograph(@photo_2)

    expect(@curator.photographs).to eq([@photo_1, @photo_2])
  end

  it "can add artists" do
    @curator.add_artist(@artist_1)
    @curator.add_artist(@artist_2)

    expect(@curator.artists).to eq([@artist_1, @artist_2])
  end

  it "can find artist by id" do
    @curator.add_photograph(@photo_1)
    @curator.add_photograph(@photo_2)
    @curator.add_artist(@artist_1)
    @curator.add_artist(@artist_2)

    expect(@curator.find_artist_by_id("1")).to eq(@artist_1)
  end

  it "can return a list of all artists and their photographs" do
    @curator.add_photograph(@photo_1)
    @curator.add_photograph(@photo_2)
    @curator.add_artist(@artist_1)
    @curator.add_artist(@artist_2)

    expect(@curator.all_artists_and_photos).to eq(thing)
  end

  # it "can return a list of names of artists who have more than one photograph" do
    # expect(@curator.multi_photo_artists).to eq(thing)
  # end

  # it "can return a list of Photographs that were taken by a photographer from that country" do
    # expect(@curator.country_specific_photos(country)).to eq(thing)
  # end


end
