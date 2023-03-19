class BowlingGame
  def initialize
  @rolls = []
  end
  
  def roll(pins)
  @rolls << pins
  end
  
  def score
  total_score = 0
  roll_index = 0
  10.times do
  if @rolls[roll_index] == 10 # strike
  total_score += 10 + @rolls[roll_index + 1] + @rolls[roll_index + 2]
  roll_index += 1
  elsif @rolls[roll_index] + @rolls[roll_index + 1] == 10 # spare
  total_score += 10 + @rolls[roll_index + 2]
  roll_index += 2
  else
  total_score += @rolls[roll_index] + @rolls[roll_index + 1]
  roll_index += 2
  end
  end
  total_score
  end
  end