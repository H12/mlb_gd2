Gem::Specification.new do |s|
  s.add_dependency 'nokogiri', '~> 1.6'
  s.name        = 'mlb_gd2'
  s.version     = '0.4.1'
  s.date        = '2015-10-17'
  s.summary     = "MLB Gameday API Wrapper"
  s.description = "A simple wrapper for MLB's GD2 API"
  s.authors     = ["Henry Firth"]
  s.email       = 'henrynf12@gmail.com'
  s.files       = ["lib/mlb_gd2.rb", "lib/mlb_gd2/game.rb", "lib/mlb_gd2/gameday.rb", "lib/mlb_gd2/helpers.rb", "lib/mlb_gd2/team.rb", "lib/mlb_gd2/batter.rb", "lib/mlb_gd2/pitcher.rb"]
  s.homepage    =
    'https://github.com/H12/mlb_gd2'
  s.license       = 'MIT'
end