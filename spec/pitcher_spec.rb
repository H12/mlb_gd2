require "rspec"

require_relative "../lib/mlb_gd2/pitcher"

describe "Pitcher" do

  include Helpers

  let(:pitcher) { Pitcher.new(generate_nokogiri_xml("http://gd2.mlb.com/components/game/mlb/year_2015/month_10/day_13/gid_2015_10_13_slnmlb_chnmlb_1/boxscore.xml").xpath("//pitcher").first) }

  describe "#name" do
    it "returns a pitcher's full name" do
      expect(pitcher.name).to eq("Lackey")
    end
  end

  describe "#outs" do
    it "returns a pitchers outs" do
      expect(pitcher.outs).to eq("9")
    end
  end

  describe "#walks" do
    it "returns a pitchers walks" do
      expect(pitcher.walks).to eq("1")
    end
  end

  describe "#strikeouts" do
    it "returns a pitchers strikeouts" do
      expect(pitcher.strikeouts).to eq("5")
    end
  end

  describe "#hits" do
    it "returns a pitchers hits" do
      expect(pitcher.hits).to eq("4")
    end
  end

  describe "#runs" do
    it "returns a pitchers runs" do
      expect(pitcher.runs).to eq("4")
    end
  end

  describe "#homeruns" do
    it "returns a pitchers homeruns" do
      expect(pitcher.homeruns).to eq("1")
    end
  end

  describe "#earned_runs" do
    it "returns a pitchers earned_runs" do
      expect(pitcher.earned_runs).to eq("4")
    end
  end

  describe "#era" do
    it "returns a pitchers era" do
      expect(pitcher.era).to eq("3.48")
    end
  end

  describe "#ip" do
    it "returns a pitchers ip" do
      expect(pitcher.ip).to eq("3.0")
    end
  end

end