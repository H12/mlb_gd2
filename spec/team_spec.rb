require "rspec"

require_relative "../lib/mlb_gd2/team"

describe "team" do

  include Helpers

  let(:team) { Team.new(generate_nokogiri_xml("http://gd2.mlb.com/components/game/mlb/year_2015/month_10/day_13/gid_2015_10_13_slnmlb_chnmlb_1/boxscore.xml").xpath("//boxscore").first, "home") }

  describe "#name" do
    it "returns the name of the specified team" do
      expect(team.name).to eq("Chicago Cubs")
    end
  end

  describe "#linescore" do
    it "returns the inning-by-inning linescore of the specified team" do
      expect(team.linescore).to eq(["0","4","0","0","0","1","1","0","x"])
    end
  end

  describe "#runs" do
    it "returns the total game runs of the specified team" do
      expect(team.runs).to eq("6")
    end
  end

  describe "#hits" do
    it "returns the total game hits of the specified team" do
      expect(team.hits).to eq("8")
    end
  end

  describe "#errors" do
    it "returns the total game errors of the specified team" do
      expect(team.errors).to eq("1")
    end
  end

  describe "#batters" do
    it "returns an array of batters" do
      expect(team.batters.sample).to be_a(Batter)
    end
    it "only includes the batters of the specified team" do
      expect(team.batters.length).to eq(19)
    end
  end

  describe "#pitchers" do
    it "returns an array of pitchers" do
      expect(team.pitchers.sample).to be_a(Pitcher)
    end
    it "only includes the pitchers of the specified team" do
      expect(team.pitchers.length).to eq(8)
    end
  end

end