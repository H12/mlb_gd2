require "rspec"

require_relative "../lib/mlb_gd2/game"

describe "Game" do

  let(:game) { Game.new("http://gd2.mlb.com/components/game/mlb/year_2015/month_09/day_30/gid_2015_09_30_chnmlb_cinmlb_1/") }

  describe "#teams" do
    it "returns a hash containing the home and away team names" do
      expect(game.teams).to eq({away: "Chicago Cubs", home: "Cincinnati Reds"})
    end
  end

  describe "#linescores" do
    it "returns a hash containing the home and away team line scores" do
      expect(game.linescores).to eq({away: {inning_line_score: [0,0,2,1,1,1,0,3,2], runs: 10, hits: 16, errors: 0}, home: {inning_line_score: [1,0,0,0,0,0,0,0,2], runs: 3, hits: 4, errors: 0}})
    end
  end

  describe "#batters" do
    it "returns an array of batter objects" do
      expect(game.batters.sample).to be_a(Batter)
    end
  end

end