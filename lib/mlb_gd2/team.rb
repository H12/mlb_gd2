require "net/http"
require "nokogiri"
require_relative "./helpers"

class Team

  attr_reader :name, :linescore

  include Helpers

  def initialize(boxscore, flag)
    @name = boxscore.attribute("#{flag}_fname").value
    @linescore = boxscore.xpath("//inning_line_score").map { |inning| inning["#{flag}"].to_i }
  end

end