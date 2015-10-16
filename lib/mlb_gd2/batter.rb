require "net/http"
require "nokogiri"
require_relative "./helpers"

class Batter

  attr_reader :name, :position

  include Helpers

  def initialize(batter_xml)
    @name = batter_xml.attribute("name_display_first_last").value
    @position = batter_xml.attribute("pos").value
  end

end