require "rspec"

require_relative "../lib/mlb_gd2/batter"

describe "Batter" do

  include Helpers

  let(:batter) { Batter.new(generate_nokogiri_xml("http://gd2.mlb.com/components/game/mlb/year_2015/month_10/day_13/gid_2015_10_13_slnmlb_chnmlb_1/boxscore.xml").xpath("//batter").first) }

  describe "#name" do
    it "returns a batter's full name" do
      expect(batter.name).to eq("Fowler")
    end
  end

  describe "#position" do
    it "returns a batter's position" do
      expect(batter.position).to eq("CF")
    end
  end

  describe "#bat_order" do
    it "returns a batter's position in the batting order" do
      expect(batter.bat_order).to eq("100")
    end
  end

  describe "#at_bats" do
    it "returns a batter's at_bats" do
      expect(batter.at_bats).to eq("3")
    end
  end

  describe "#runs" do
    it "returns a batter's runs" do
      expect(batter.runs).to eq("0")
    end
  end

  describe "#hits" do
    it "returns a batter's hits" do
      expect(batter.hits).to eq("0")
    end
  end

  describe "#doubles" do
    it "returns a batter's doubles" do
      expect(batter.doubles).to eq("0")
    end
  end

  describe "#triples" do
    it "returns a batter's triples" do
      expect(batter.triples).to eq("0")
    end
  end

  describe "#homeruns" do
    it "returns a batter's homeruns" do
      expect(batter.homeruns).to eq("0")
    end
  end

  describe "#rbis" do
    it "returns a batter's rbis" do
      expect(batter.rbis).to eq("0")
    end
  end

  describe "#walks" do
    it "returns a batter's walks" do
      expect(batter.walks).to eq("1")
    end
  end

  describe "#strikeouts" do
    it "returns a batter's strikeouts" do
      expect(batter.strikeouts).to eq("1")
    end
  end

  describe "#avg" do
    it "returns a batter's avg" do
      expect(batter.avg).to eq(".188")
    end
  end

  describe "#obp" do
    it "returns a batter's obp" do
      expect(batter.obp).to eq(".235")
    end
  end

  describe "#slg" do
    it "returns a batter's slg" do
      expect(batter.slg).to eq(".438")
    end
  end

  describe "#ops" do
    it "returns a batter's ops" do
      expect(batter.ops).to eq(".673")
    end
  end

end
