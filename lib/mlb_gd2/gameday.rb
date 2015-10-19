require "net/http"
require "nokogiri"
require_relative "./helpers"
require_relative "./game"

class Gameday

  include Helpers

  attr_reader :games, :date

  def initialize(year, month, day)
    date_time = Time.new(year, month, day)
    base_url = build_base_url(date_time)

    @games = []
    generate_nokogiri_html(base_url).search('a[href^="gid"]').each do |link|
      gid = link.attributes["href"].value
      if valid_game?(base_url + gid)
        @games << Game.new(base_url + gid)
      end
    end
    @date = date_time.strftime("%B %-d, %Y")
  end

  def game_from_team(team)
    if team.downcase.include? "angels"
      tid = "ana"
    elsif team.downcase.include? "astros"
      tid = "hou"
    elsif team.downcase.include? "athletics"
      tid = "oak"
    elsif team.downcase.include? "blue jays"
      tid = "tor"
    elsif team.downcase.include? "braves"
      tid = "atl"
    elsif team.downcase.include? "brewers"
      tid = "mil"
    elsif team.downcase.include? "cardinals"
      tid = "sln"
    elsif team.downcase.include? "cubs"
      tid = "chn"
    elsif team.downcase.include? "diamondbacks"
      tid = "ari"
    elsif team.downcase.include? "dodgers"
      tid = "lan"
    elsif team.downcase.include? "giants"
      tid = "sfn"
    elsif team.downcase.include? "indians"
      tid = "cle"
    elsif team.downcase.include? "mariners"
      tid = "sea"
    elsif team.downcase.include? "marlins"
      tid = "mia"
    elsif team.downcase.include? "mets"
      tid = "nyn"
    elsif team.downcase.include? "nationals"
      tid = "was"
    elsif team.downcase.include? "orioles"
      tid = "bal"
    elsif team.downcase.include? "padres"
      tid = "sdn"
    elsif team.downcase.include? "pillies"
      tid = "phi"
    elsif team.downcase.include? "pirates"
      tid = "pit"
    elsif team.downcase.include? "rangers"
      tid = "tex"
    elsif team.downcase.include? "rays"
      tid = "tba"
    elsif team.downcase.include? "red sox"
      tid = "bos"
    elsif team.downcase.include? "reds"
      tid = "cin"
    elsif team.downcase.include? "rockies"
      tid = "col"
    elsif team.downcase.include? "royals"
      tid = "kca"
    elsif team.downcase.include? "tigers"
      tid = "det"
    elsif team.downcase.include? "twins"
      tid = "min"
    elsif team.downcase.include? "white sox"
      tid = "cha"
    elsif team.downcase.include? "yankees"
      tid = "nya"
    else
      tid = "invalid query"
    end

    selected_games = games.select { |game| game.url.include?(tid) || game.url.include?(tid) }

    if selected_games.length > 1
      puts "That query fits more than one game. Please be more specific."
    elsif selected_games.empty?
      puts "No teams match that query."
    else
      selected_games[0]
    end
  end

end