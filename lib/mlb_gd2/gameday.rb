require_relative './game'
require_relative './gameday_helpers'

class Gameday

  attr_reader :games, :date

  def initialize(year, month, day)
    date_time = Time.new(year, month, day)
    base_url = GamedayUrlBuilder.build_base_url(date_time)

    @games = GamedayUrlBuilder.generate_nokogiri_html(base_url).search('a[href^="gid"]').map do |link|
      gid = link.attributes["href"].value
      Game.new(base_url + gid)
    end
    @date = date_time.strftime("%B %-d, %Y")
  end



end