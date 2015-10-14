require "rspec"

require_relative "../lib/mlb_gd2/gameday_helpers"

describe "GamedayUrlBuilder" do

  let(:date)     { Time.new(2014, 6, 8) }
  let(:html_url) { "http://gd2.mlb.com/components/game/mlb/year_2014/month_06/day_08/gid_2014_06_08_miamlb_chnmlb_1/" }
  let(:xml_url)  { "http://gd2.mlb.com/components/game/mlb/year_2014/month_06/day_08/gid_2014_06_08_miamlb_chnmlb_1/pitchers/453562.xml" }


  describe "::build_base_url" do
    context "valid days as strings" do
      it "returns a valid GD2 url" do
        expect(GamedayUrlBuilder.build_base_url(date)).to eq "http://gd2.mlb.com/components/game/mlb/year_2014/month_06/day_08/"
      end
    end
  end

  describe "::generate_nokogiri_html" do
    it "returns a Nokogiri::HTML::Document from the passed-in url" do
      expect(GamedayUrlBuilder.generate_nokogiri_html(html_url)).to be_a(Nokogiri::HTML::Document)
    end
  end

  describe "::generate_nokogiri_xml" do
    it "returns a Nokogiri::XML::Document from the passed-in url" do
      expect(GamedayUrlBuilder.generate_nokogiri_xml(xml_url)).to be_a(Nokogiri::XML::Document)
    end
  end
end