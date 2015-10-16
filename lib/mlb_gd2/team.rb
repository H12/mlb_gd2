require "net/http"
require "nokogiri"
require_relative "./helpers"

class Team

  attr_reader :name

  include Helpers

  def initialize(boxscore, flag)
    @name = boxscore.attribute("#{flag}_fname").value
  end

end