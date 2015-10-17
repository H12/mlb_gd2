require "net/http"
require "nokogiri"
require_relative "./helpers"

class Batter

  attr_reader :name, :position, :at_bats, :runs, :hits, :doubles, :triples, :homeruns, :rbis, :walks, :strikeouts, :avg, :obp, :slg, :ops

  include Helpers

  def initialize(batter_xml)
    @name       = batter_xml.attribute("name").value
    @position   = batter_xml.attribute("pos").value
    @at_bats    = batter_xml.attribute("ab").value
    @runs       = batter_xml.attribute("r").value
    @hits       = batter_xml.attribute("h").value
    @doubles    = batter_xml.attribute("d").value
    @triples    = batter_xml.attribute("t").value
    @homeruns   = batter_xml.attribute("hr").value
    @rbis       = batter_xml.attribute("rbi").value
    @walks      = batter_xml.attribute("bb").value
    @strikeouts = batter_xml.attribute("so").value
    @avg        = batter_xml.attribute("avg").value
    @obp        = batter_xml.attribute("obp").value
    @slg        = batter_xml.attribute("slg").value
    @ops        = batter_xml.attribute("ops").value
  end

end