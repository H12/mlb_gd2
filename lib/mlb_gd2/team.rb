require "net/http"
require "nokogiri"
require_relative "./helpers"

class Team

  attr_reader :name, :linescore, :runs, :hits

  include Helpers

  def initialize(boxscore, flag)
    @name = boxscore.attribute("#{flag}_fname").value
    @linescore = boxscore.xpath("//inning_line_score").map { |inning| inning["#{flag}"] }
    @runs = boxscore.xpath("//linescore").first.attribute("#{flag}_team_runs").value
    @hits = boxscore.xpath("//linescore").first.attribute("#{flag}_team_hits").value
  end

end