class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @answer = 0
  end

  def new_question
    @answer = 0
    first_num = 1 + rand(20)
    second_num = 1 + rand(20)
    @answer = first_num + second_num
    "What does #{first_num} plus #{second_num} equal?"
  end

  def correct_answer?
  end

  def new_turn
    puts "----- NEW TURN -----"
    puts "Player #{@players.first.name}: #{new_question}"
  end

  def play
    new_turn
  end

end