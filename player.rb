class Player
  
   attr_accessor :name, :lives, :identifier
  
  # Start with a Name and 3 Lives
  def initialize(name, identifier)
   @name = name
   @lives = 3
   @identifier = identifier
  end  
  
  # Player can lose a life.
  def lose_life()
    @lives = @lives - 1
  end

end




