require "rspec"

require_relative "../lib/mlb_gd2/gameday"

describe "Gameday" do

  let(:gameday) { Gameday.new("2014", "06", "08") }

  describe "#games" do
    it "returns an array of Game objects which take place on the current Gameday" do
      expect(gameday.games.sample).to be_a(Game)
    end
  end

  describe "#date" do
    it "returns the date associated with the current Gameday object" do
      expect(gameday.date).to eq("June 8, 2014")
    end
  end

end