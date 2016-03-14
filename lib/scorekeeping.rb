module Scorekeeping
  attr_writer :games, :winners

  def games
    @games ||= 0
  end

  def winners
    @winners ||= []
  end

  def streak?
    streak > 2
  end

  def streak
    winners.reverse.take_while{|win| win == "player"}.length
  end

  def mortgage?
    losing_streak > 4
  end

  def losing_streak
    winners.reverse.take_while{|win| win == "dealer"}.length
  end
end
