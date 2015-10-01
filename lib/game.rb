require_relative './gameday_helpers'

class Game

  def initialize(url)
    @url = url
  end

  def teams
    Hash[
      :away, GamedayUrlBuilder.generate_nokogiri_xml(url + 'boxscore.xml').xpath("//boxscore").first["away_fname"],
      :home, GamedayUrlBuilder.generate_nokogiri_xml(url + 'boxscore.xml').xpath("//boxscore").first["home_fname"]
    ]
  end

private

attr_reader :url

end