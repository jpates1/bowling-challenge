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
  end
end