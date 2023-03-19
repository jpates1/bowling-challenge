class BowlingGame
  def initialize
    @rolls = []
  end

  # record the number of pins knocked down on this roll
  def roll(pins)
    raise 'Invalid number of pins' unless (0..10).include?(pins)
    @rolls << pins
  end

  # calculate the total score for the game
  def score
    total_score = 0
    roll_index = 0

    # there are 10 frames in a game
    10.times do |frame|
      # check if this was a strike
      if strike?(roll_index)
        # if it was a strike, add 10 plus the next two rolls to the total score
        # but if the next two rolls aren't recorded yet, we can't calculate the score
        if @rolls[roll_index+1] && @rolls[roll_index+2]
          total_score += 10 + @rolls[roll_index+1] + @rolls[roll_index+2]
        else
          # if the next two rolls aren't recorded yet, we can't calculate the score yet
          break
        end
        roll_index += 1
      # check if this was a spare
      elsif spare?(roll_index)
        # if it was a spare, add 10 plus the next roll to the total score
        # but if the next roll isn't recorded yet, we can't calculate the score
        if @rolls[roll_index+2]
          total_score += 10 + @rolls[roll_index+2]
        else
          # if the next roll isn't recorded yet, we can't calculate the score yet
          break
        end
        roll_index += 2
      else
        # this was an open frame, so just add the pins from this frame to the total score
        total_score += @rolls[roll_index] + @rolls[roll_index+1]
        roll_index += 2
      end
    end

    total_score
  end

  private

  # check if this roll was a strike (all 10 pins were knocked down)
  def strike?(roll_index)
    if @rolls[roll_index] == 10
      # if it was a strike, we need to check the next two rolls to calculate the score
      if @rolls[roll_index+1] && @rolls[roll_index+2]
        true
      else
        false
      end
    else
      false
    end
  end

  # check if this frame was a spare (all 10 pins were knocked down in two rolls)
  def spare?(roll_index)
    if @rolls[roll_index] + @rolls[roll_index+1] == 10
      # if it was a spare, we need to check the next roll to calculate the score
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