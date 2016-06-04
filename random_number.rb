class RandomNumber
  MAX_ATTEMPTS = 3


  def initialize
    @number_of_tries = 0
    self.start_game
  end

  def start_game
    until @number_of_tries == MAX_ATTEMPTS
      puts "enter a number between 1 and 10"
      number = gets
      number = number.chomp
      computer_number = rand(10)+1

      if number.to_i == computer_number.to_i
        puts "Contrats you entered #{number} and the computer picked #{computer_number}"
        return
      else
        puts "Oops better luck next time, you entered #{number} and the computer picked #{computer_number}"
      end
      @number_of_tries += 1
      puts "the value of number of tried is #{@number_of_tries} "
    end

    puts "THE END"
  end

end