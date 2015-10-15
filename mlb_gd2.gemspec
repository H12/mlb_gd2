Gem::Specification.new do |s|
  s.add_dependency 'nokogiri', '~> 1.6'
  s.name        = 'mlb_gd2'
  s.version     = '0.1.5'
  s.date        = '2015-10-15'
  s.summary     = "MLB Gameday API Wrapper"
  s.description = "A simple wrapper for MLB's GD2 API"
  s.authors     = ["Henry Firth"]
  s.email       = 'henrynf12@gmail.com'
  s.files       = ["lib/mlb_gd2.rb", "lib/mlb_gd2/game.rb", "lib/mlb_gd2/gameday.rb", "lib/mlb_gd2/helpers.rb"]
  s.homepage    =
    'http://rubygems.org/gems/mlb_gd2'
  s.license       = 'MIT'
end