require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/game'
require 'app/player'
require 'app/board'

class Start
game = Game.new
game.play
end
