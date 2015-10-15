require "net/http"
require "nokogiri"
require_relative "./helpers"

class Gameday

  include Helpers

  attr_reader :games, :date

  def initialize(year, month, day)
    date_time = Time.new(year, month, day)
    base_url = build_base_url(date_time)

    @games = generate_nokogiri_html(base_url).search('a[href^="gid"]').map do |link|
      gid = link.attributes["href"].value
      Game.new(base_url + gid)
    end
    @date = date_time.strftime("%B %-d, %Y")
  end

  def game_from_team(team)
    selected_games = games.select { |game| game.teams[:home].include?(team) || game.teams[:away].include?(team) }

    if selected_games.length > 1
      puts "That query fits more than one game. Please be more specific."
    elsif selected_games.empty?
      puts "No teams match that query."
    else
      selected_games[0]
    end
  end

end