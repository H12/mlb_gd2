require "rspec"

require_relative "../lib/game"

describe "Game" do

  let(:game) { Game.new("http://gd2.mlb.com/components/game/mlb/year_2015/month_09/day_30/gid_2015_09_30_chnmlb_cinmlb_1/") }

  describe "#teams" do
    it "returns a hash containing the home and away team names" do
      expect(game.teams).to eq({away: "Chicago Cubs", home: "Cincinnati Reds"})
    end
  end

end