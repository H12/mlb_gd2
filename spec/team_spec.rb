require "rspec"

require_relative "../lib/mlb_gd2/team"

describe "team" do

  include Helpers

  let(:team) { Team.new(generate_nokogiri_xml("http://gd2.mlb.com/components/game/mlb/year_2015/month_10/day_13/gid_2015_10_13_slnmlb_chnmlb_1/boxscore.xml").xpath("//boxscore").first, "home") }

  describe "#name" do
    it "returns the name of the selected team" do
      expect(team.name).to eq("Chicago Cubs")
    end
  end

  describe "#linescore" do
    it "returns the inning-by-inning linescore of the selected team" do
      expect(team.linescore).to eq(["0","4","0","0","0","1","1","0","0"])
    end
  end

end