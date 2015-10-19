require "net/http"
require "nokogiri"
require_relative "./helpers"
require_relative "./team"

class Game

  attr_reader :url

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

private

attr_reader :boxscore

end