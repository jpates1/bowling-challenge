class BowlingGame
  def initialize
    @rolls = []
  end

  def roll(pins)
    raise 'Invalid number of pins' unless (0..10).include?(pins)
    @rolls << pins
  end

  def score
    total_score = 0
    roll_index = 0

    10.times do |frame|
      if strike?(roll_index)
        if @rolls[roll_index+1] && @rolls[roll_index+2]
          total_score += 10 + @rolls[roll_index+1] + @rolls[roll_index+2]
        else
          break
        end
        roll_index += 1
      elsif spare?(roll_index)
        if @rolls[roll_index+2]
          total_score += 10 + @rolls[roll_index+2]
        else
          break
        end
        roll_index += 2
      else
        total_score += @rolls[roll_index] + @rolls[roll_index+1]
        roll_index += 2
      end
    end

    total_score
  end

  private

  def strike?(roll_index)
    if @rolls[roll_index] == 10
      if @rolls[roll_index+1] && @rolls[roll_index+2]
        true
      else
        false
      end
    else
      false
    end
  end

  def spare?(roll_index)
    if @rolls[roll_index] + @rolls[roll_index+1] == 10
      if @rolls[roll_index+2]
        true
      else
        false
      end
    else
      false
    end
  end
end

#modify below to run game
game = BowlingGame.new
	game.roll(1)
	game.roll(4)
	game.roll(4)
	game.roll(5)
	game.roll(6)
	game.roll(4)
	game.roll(5)
	game.roll(5)
	game.roll(10)

  game.roll(0)
	game.roll(1)
	game.roll(7)
	game.roll(3)
	game.roll(6)
	game.roll(4)
	game.roll(10)

	game.roll(2)
	game.roll(8)
	game.roll(6)
  puts game.score