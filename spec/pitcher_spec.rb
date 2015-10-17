require "rspec"

require_relative "../lib/mlb_gd2/pitcher"

describe "Pitcher" do

  include Helpers

  let(:pitcher) { Pitcher.new(generate_nokogiri_xml("http://gd2.mlb.com/components/game/mlb/year_2015/month_10/day_13/gid_2015_10_13_slnmlb_chnmlb_1/boxscore.xml").xpath("//pitcher").first) }

  describe "#name" do
    it "returns a pitcher's full name" do
      expect(pitcher.name).to eq("John Lackey")
    end
  end

end