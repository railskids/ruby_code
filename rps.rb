class RockPaperScissors

  def player_throw=(value) #this method will check to make sure the player does not input a empty value
    if value == ""
      raise "Value can't be blank, please enter one of the following values #{@throws}"
    end
    @player_throw = value.to_sym
  end

  def initialize
    @player_throw = nil
    @beats = {rock: :scissors, paper: :rock, scissors: :paper}
    @throws = @beats.keys
  end

  def play_round(player_throw)
    self.player_throw = player_throw # by using self we are actually calling the player_throw method declared above

    unless @throws.include?(@player_throw)
      puts "You must enter one of the following values #{@throws}"
    end

    computer_throw = @throws.sample # the computer is taking her turn :-)

    if @player_throw == computer_throw
      puts 'You tied with the computer. Try again!'
    elsif computer_throw == @beats[@player_throw]
      puts "Nicely done; #{@player_throw} beats #{computer_throw}!"
    else
     puts "Ouch; #{computer_throw} beats #{@player_throw}. Better luck next time!"
   end

  end
end