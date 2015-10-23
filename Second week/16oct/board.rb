class Board

	def initialize(grid = default_grid)
		@grid = grid
	end

	def default_grid
		Array.new(3) { Array.new(3) { "" } }
	end

end



#También se podría iniciar en hardcode así:
=begin
	["cell", "cell", "cell"]
	["cell", "cell", "cell"]
	["cell", "cell", "cell"]
]
=end

board = Board.new
print board 

