require "rspec"

require_relative "../lib/mlb_gd2/batter"

describe "Batter" do

  include Helpers

  let(:batter) { Batter.new(generate_nokogiri_xml("http://gd2.mlb.com/components/game/mlb/year_2015/month_10/day_13/gid_2015_10_13_slnmlb_chnmlb_1/boxscore.xml").xpath("//batter").first) }

  describe "#name" do
    it "returns a batter's full name" do
      expect(batter.name).to eq("Dexter Fowler")
    end
  end

  describe "#position" do
    it "returns a batter's position" do
      expect(batter.position).to eq("CF")
    end
  end



end
