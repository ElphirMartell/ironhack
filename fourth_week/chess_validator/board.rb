require 'pry'

class Board
	def initialize
		@board = Array.new(8)
	end

	def new_board
		@board.map { |col| col = Array.new(8).fill("--") }
	end

	def rows
		new_board.transpose
	end

	def columns
		@board
	end
end

partida = Board.new