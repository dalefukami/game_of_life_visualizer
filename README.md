# Game Of Life Visualizer

This is a really basic visualizer for the game of life. Just add your game class!

## Usage

1. Clone the repository
2. Replace lib/game.rb with your Game class.
    * Implement status() which returns the state of the game as a double array. 0 represents a dead cell and 1 represents a live cell.
    * Implement step() which updates the state of the game
3. ruby bin/game_of_life
