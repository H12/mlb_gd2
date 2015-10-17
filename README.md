# MLB Gameday API

This is a Ruby wrapper for the MLB Gameday API.

## Installation

    $ gem install 'mlb_gd2'

## Usage

To get an array of Games for a specific day:

    require 'mlb_gd2'
    gd = Gameday.new(2015, 10, 13)

To get a specific game given a team name:

    game = gd.game_from_team("Cubs")

To get specific teams out of a game:

    cubs = game.home_team
    cards = game.away_team

To get batters/pitchers out of a team:

    batters = cubs.batters
    pitchers = cubs.pitchers

Check out the [documentation](http://www.rubydoc.info/gems/mlb_gd2/0.3.1) for more methods and functionality.