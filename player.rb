class Player

  def initialize(number)
    @number = number
    @lives = 3
  end

  # return player number
  def name
    @number
  end

  def lost?
    @lives == 0
  end

  def remaining_lives
    @lives
  end

  def wrong_answer
    @lives -= 1
  end

end