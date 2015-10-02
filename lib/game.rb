require_relative './gameday_helpers'

class Game

  def initialize(url)
    @url = url
    @boxscore = GamedayUrlBuilder.generate_nokogiri_xml(url + 'boxscore.xml').xpath("//boxscore").first
  end

  def teams
    Hash[
      :away, boxscore["away_fname"],
      :home, boxscore["home_fname"]
    ]
  end

private

attr_reader :url, :boxscore

end