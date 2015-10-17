require "net/http"
require "nokogiri"
require_relative "./helpers"

class Pitcher

  attr_reader :name, :position

  include Helpers

  def initialize(pitcher_xml)
    @name = pitcher_xml.attribute("name_display_first_last").value
  end

end