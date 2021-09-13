require "./game.rb"
require "./round.rb"
require "./player.rb"

# Initiate a Game

g = Game.new

# Play new game

g.play_game(g.current_player, g.other_player)