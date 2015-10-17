require "net/http"
require "nokogiri"
require_relative "./helpers"
require_relative "./batter"

class Team

  attr_reader :name, :linescore, :runs, :hits, :errors, :batters

  include Helpers

  def initialize(boxscore, flag)
    @name = boxscore.attribute("#{flag}_fname").value
    @linescore = boxscore.xpath("//inning_line_score").map { |inning| inning["#{flag}"] }
    @runs = boxscore.xpath("//linescore").first.attribute("#{flag}_team_runs").value
    @hits = boxscore.xpath("//linescore").first.attribute("#{flag}_team_hits").value
    @errors = boxscore.xpath("//linescore").first.attribute("#{flag}_team_errors").value
    @batters = boxscore.search("batting[team_flag='#{flag}']>batter").map { |batter_xml| Batter.new(batter_xml) }
  end

end