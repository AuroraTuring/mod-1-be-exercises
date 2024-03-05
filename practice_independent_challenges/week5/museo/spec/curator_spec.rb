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
    expect(@curator.find_artist_by_id("1")).to eq(@artist_1)
  end


end
