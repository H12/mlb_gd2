require "net/http"
require "nokogiri"

module Helpers

  GD2_MLB_BASE = "http://gd2.mlb.com/components/game/mlb"

  def build_base_url(date)
    GD2_MLB_BASE + date.strftime("/year_%Y/month_%m/day_%d/")
  end

  def generate_nokogiri_html(url)
    Nokogiri::HTML(Net::HTTP.get(URI(url)))
  end

  def generate_nokogiri_xml(url)
    Nokogiri::XML(Net::HTTP.get(URI(url)))
  end

  def valid_game?(url)
    generate_nokogiri_xml(url).xpath('//a').map { |link| link.attribute('href').value }.include? "boxscore.xml"
  end

end