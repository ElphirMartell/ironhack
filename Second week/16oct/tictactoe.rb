require_relative "board.rb"
require_relative "game.rb"
require_relative "player.rb"
require_relative "cell.rb"

board = Board.new("cell")
player1 = Player.new("Fulano", "x")
player2 = Player.new("Mengano", "o")
game = Game.new

