# MLB Gameday API

This is a Ruby wrapper for the MLB Gameday API.

## Installation

    $ gem install 'mlb_gd2'

## Usage

To get an array of Games for a specific day:

    require 'mlb_gd2'
    gd = Gameday.new(2011, 6, 8)

To get a specific game given a team name:

    game = gd.game_from_team("Cubs")

To get data out of a specific game:

    game.teams
    game.linescores