require 'game'

RSpec.describe BowlingGame do
  describe "#roll" do
    it "adds the number of pins knocked down to the rolls array" do
      game = BowlingGame.new
      game.roll(5)
      expect(game.instance_variable_get(:@rolls)).to eq([5])
    end
  end
  
  describe "#score" do
    it "returns 0 for a gutter game" do
    game = BowlingGame.new
    20.times { game.roll(0) }
    expect(game.score).to eq(0)
  end

    it "returns the sum of all rolls for a game without strikes or spares" do
      game = BowlingGame.new
      20.times { game.roll(4) }
      expect(game.score).to eq(80)
    end


    it "correctly calculates a spare" do
      game = BowlingGame.new
      game.roll(5)
      game.roll(5) # spare
      game.roll(3)
      17.times { game.roll(0) }
      expect(game.score).to eq(16)
    end

    it "correctly calculates a strike" do
      game = BowlingGame.new
      game.roll(10) # strike
      game.roll(3)
      game.roll(4)
      16.times { game.roll(0) }
      expect(game.score).to eq(24)
    end

    it "correctly calculates a perfect game" do
      game = BowlingGame.new
      12.times { game.roll(10) }
      expect(game.score).to eq(300)
    end
  end

  it "returns the correct score for a game with all spares" do
    game = BowlingGame.new
    21.times { game.roll(5) }
    expect(game.score).to eq(150)
  end



end