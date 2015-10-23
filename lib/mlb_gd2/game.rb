require "net/http"
require "nokogiri"
require_relative "./helpers"
require_relative "./team"

class Game

  attr_reader :url, :home_team, :away_team

  include Helpers

  def initialize(url)
    @url = url
    @home_team = Team.new(boxscore(url), "home")
    @away_team = Team.new(boxscore(url), "away")
  end

end