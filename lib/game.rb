class BowlingGame
  def initialize
    @rolls = []
  end
  
  def roll(pins)
    @rolls << pins
  end
  
  def score
    @rolls.sum
  end
  
  def frame_score(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1]
  end
end