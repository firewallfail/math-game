class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @answer = 0
    @player_answer = 0
  end

  def game_over?
    @player1.lost? || @player2.lost?
  end

  def new_question
    @answer = 0
    first_num = 1 + rand(20)
    second_num = 1 + rand(20)
    @answer = first_num + second_num
    "What does #{first_num} plus #{second_num} equal?"
  end

  def correct_answer?
    @player_answer == @answer.to_s
  end

  def correct_answer
    puts "Player #{@players.first.name} YES! You are correct."
  end

  def wrong_answer
    @players.first.wrong_answer
    puts "Player #{@players.first.name} Seiously? No!"
  end

  def new_turn
    puts "----- NEW TURN -----"
    puts "Player #{@players.first.name}: #{new_question}"
    @player_answer = gets.chomp
  end

  def game_over_message
    puts "Player #{@players.first.name} wins with a score of #{@players.first.remaining_lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def play
    until(game_over?) do
      new_turn
      if correct_answer?
        correct_answer
      else
        wrong_answer
      end
      @players.rotate!
    end
    game_over_message
  end

end