class Game

  attr_accessor :p1, :p2, :current_player, :other_player

  # For each new game we need a new Player 1, and Player 2.
  def initialize
    @p1 = Player.new("Player 1", "🥇P1")
    @p2 = Player.new("Player 2", "🥈P2")
    @current_player = @p1
    @other_player = @p2
  end

  # Switch players every round
  def switch_current_player
    if current_player == @p1
      @current_player = @p2
      @other_player = @p1
    else 
      @current_player = @p1
      @other_player = @p2
    end
  end

  # For the first round, we want a message that reflects that
  def first_round(player, other_player)
    puts " "
    puts " ----- START GAME ----- "
    puts " "
    r1 = Round.new
    r1.ask_question(player)
    r1.check_answer(player, other_player)
    self.switch_current_player
  end
 # For all other rounds, we say New Turn
  def run_round(player, other_player)
    puts " "
    puts " ----- NEW TURN ----- "
    puts " "
    r1 = Round.new
    r1.ask_question(player)
    r1.check_answer(player, other_player)
    self.switch_current_player
  end

  # We play the first round, and then loop through rounds until a winner emerges.
  def play_game (current_player, other_player)
    self.first_round(self.current_player, self.other_player)
    while current_player.lives > 0 && other_player.lives > 0
    self.run_round(self.current_player, self.other_player)
    end
  end
end


