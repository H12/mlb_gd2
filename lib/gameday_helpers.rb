require "net/http"
require "nokogiri"

class GamedayUrlBuilder

  GD2_MLB_BASE = "http://gd2.mlb.com/components/game/mlb"

  def self.build_base_url(date)
    GD2_MLB_BASE + date.strftime("/year_%Y/month_%m/day_%d/")
  end

  def self.generate_nokogiri_html(url)
    Nokogiri::HTML(Net::HTTP.get(URI(url)))
  end

  def self.generate_nokogiri_xml(url)
    Nokogiri::XML(Net::HTTP.get(URI(url)))
  end

end