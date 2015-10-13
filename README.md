# MLB Gameday API

This is a Ruby wrapper for the MLB Gameday API.

## Installation

    $ gem install 'mlb_gd2'

## Usage

To get an array of Games for a specific day:

    require 'mlb_gd2'
    gd = Gameday.new(2011, 6, 8)

To get data out of a specific game (after executing the above):

    game = gd.sample
    game.teams
    game.linescores