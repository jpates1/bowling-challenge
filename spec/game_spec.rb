require 'game'

RSpec.describe BowlingGame do
  describe "#roll" do
  it "adds the number of pins knocked down to the rolls array" do
  game = BowlingGame.new
  game.roll(5)
  expect(game.instance_variable_get(:@rolls)).to eq([5])
  end
  end
  end