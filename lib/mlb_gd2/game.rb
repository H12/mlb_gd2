require "net/http"
require "nokogiri"
require_relative "./helpers"

class Game

  include Helpers

  def initialize(url)
    @url = url
    @boxscore = generate_nokogiri_xml(url + 'boxscore.xml').xpath("//boxscore").first
  end

  def home_team
    Team.new(boxscore, "home")
  end

  def away_team
    Team.new(boxscore, "away")
  end

  def batters
    boxscore.xpath("//batter").map { |batter_xml| Batter.new(batter_xml) }
  end

private

attr_reader :url, :boxscore

end