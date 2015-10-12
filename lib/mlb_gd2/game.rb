require "net/http"
require "nokogiri"

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

  def linescores
    linescore = boxscore.xpath("//linescore").first

    Hash[
      :away, {
        inning_line_score: boxscore.xpath("//inning_line_score").map { |inning| inning["away"].to_i },
        runs: linescore["away_team_runs"].to_i,
        hits: linescore["away_team_hits"].to_i,
        errors: linescore["away_team_errors"].to_i
      },
      :home, {
        inning_line_score: boxscore.xpath("//inning_line_score").map { |inning| inning["home"].to_i },
        runs: linescore["home_team_runs"].to_i,
        hits: linescore["home_team_hits"].to_i,
        errors: linescore["home_team_errors"].to_i
      }
    ]
  end

private

attr_reader :url, :boxscore

end