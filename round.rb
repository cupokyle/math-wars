  class Round

    #Initialize a random addition question
    def initialize
      @num1 = rand(1..50)
      @num2 = rand(1..50)
      @q_answer = @num1 + @num2
    end

    # Ask player a question
    def ask_question(player)
    puts "#{player.name}: What does #{@num1} plus #{@num2} equal?"
    puts " "
    end
        
  # Take Player Answer and Spit Out Proper Result
  def check_answer(player, other_player)
    p_answer = gets.chomp.to_i
    # If the answer is correct, message and proceed
    if p_answer == @q_answer
      puts " "
      puts "✅ #{player.name}: Yes! You are correct! ✅"
      puts " "
      puts "#{player.identifier}: #{player.lives}/3 vs #{other_player.identifier}: #{other_player.lives}/3"
      # If answer is incorrect, player either loses a life and proceeds...
    else
      if player.lives > 1
        puts " "
        puts "❌ #{player.name}: That's incorrect! ❌"
        puts " "
        player.lose_life
        puts "#{player.identifier}: #{player.lives}/3 vs #{other_player.identifier}: #{other_player.lives}/3"
        # ...Or the lose the game entirely
      else
        player.lose_life
        puts " "
        puts "🏆 #{other_player.name} wins with a score of #{other_player.lives}/3 🏆"
        puts " "
        puts " ----- GAME OVER ----- "
        puts " "
        puts "Good bye!"
        puts " "
      end
    end
  end 
end



