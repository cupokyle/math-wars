class Game

  attr_accessor :p1, :p2, :current_player, :other_player

  def initialize
    @p1 = Player.new("Player 1", "🥇P1")
    @p2 = Player.new("Player 2", "🥈P2")
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

  def first_round(player, other_player)
    puts " "
    puts " ----- START GAME ----- "
    puts " "
    r1 = Round.new
    r1.ask_question(player)
    r1.check_answer(player, other_player)
    self.switch_current_player
  end

  def run_round(player, other_player)
    puts " "
    puts " ----- NEW TURN ----- "
    puts " "
    r1 = Round.new
    r1.ask_question(player)
    r1.check_answer(player, other_player)
    self.switch_current_player
  end

  def play_game (current_player, other_player)
    self.first_round(self.current_player, self.other_player)
    while current_player.lives > 0 && other_player.lives > 0
    self.run_round(self.current_player, self.other_player)
    end
  end

end


