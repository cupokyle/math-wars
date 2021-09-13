require "./player.rb"
require "./round.rb"
class Game

  attr_accessor :p1, :p2, :current_player, :other_player

  def initialize
    @p1 = Player.new("Player 1", "P1")
    @p2 = Player.new("Player 2", "P2")
    @current_player = @p1
    @other_player = @p2
  end

  def switch_current_player
    if current_player == @p1
      @current_player = @p2
      @other_player = @p1
    else 
      @current_player = @p1
      @other_player = @p2
    end
  end


  def play_game
    # While both lives > 0
    # ~Run Round 
    # When lives = 0 
    # ~Game Over
  end

  def run_round(player, other_player)
    puts " ----- NEW TURN ----- "
    r1 = Round.new
    puts "You're up, #{self.current_player.name}"
    r1.ask_question(player)
    r1.check_answer(player, other_player)
    self.switch_current_player
    puts "Now it's your turn, #{self.current_player.name}"
  end

end

g = Game.new
g.run_round(g.current_player, g.other_player)
g.run_round(g.current_player, g.other_player)


