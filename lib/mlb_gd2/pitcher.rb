require "net/http"
require "nokogiri"
require_relative "./helpers"

class Pitcher

  attr_reader :name, :outs, :walks, :strikeouts, :hits, :runs, :homeruns, :earned_runs, :era

  include Helpers

  def initialize(pitcher_xml)
    @name = pitcher_xml.attribute("name").value
    @outs = pitcher_xml.attribute("out").value
    @walks = pitcher_xml.attribute("bb").value
    @strikeouts = pitcher_xml.attribute("so").value
    @hits = pitcher_xml.attribute("h").value
    @runs = pitcher_xml.attribute("r").value
    @homeruns = pitcher_xml.attribute("hr").value
    @earned_runs = pitcher_xml.attribute("er").value
    @era  = pitcher_xml.attribute("era").value
  end

  def ip
    "#{(outs.to_i / 3).to_s}.#{outs.to_i%3}"
  end

end