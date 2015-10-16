require "rspec"

require_relative "../lib/mlb_gd2/game"
require_relative "../lib/mlb_gd2/team"

describe "Game" do

  let(:game) { Game.new("http://gd2.mlb.com/components/game/mlb/year_2015/month_10/day_13/gid_2015_10_13_slnmlb_chnmlb_1/") }

  describe "#home_team" do
    it "returns the correct home team for the given game" do
      expect(game.home_team.name).to eq("Chicago Cubs")
    end
  end

  describe "#away_team" do
    it "returns the correct away team for the given game" do
      expect(game.away_team.name).to eq("St. Louis Cardinals")
    end
  end

end