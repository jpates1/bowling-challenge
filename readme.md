# Bowling Scorecard Program

This is a simple program that counts and sums the scores of a bowling game for one player. The game consists of 10 frames, in which the player tries to knock down 10 pins. In every frame, the player can roll one or two times, and the actual number depends on strikes and spares. The score of a frame is the number of knocked down pins plus bonuses for strikes and spares.

## Usage
To use the program, simply create a new instance of the BowlingGame class and call the roll method to input the number of pins knocked down for each roll. Finally, call the score method to get the total score for the game.

```ruby
game = BowlingGame.new
game.roll(3)
game.roll(4)
game.score #=> 7
```