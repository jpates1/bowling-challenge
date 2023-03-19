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
  end
  end