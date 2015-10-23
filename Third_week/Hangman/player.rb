class Player

	def initialize
		@human_player = human_player
		@computer_player = computer_player
	end

	def human_player
		puts "What's your name?"
		human_player = gets.chomp.to_s.capitalize!
		puts "Hello, #{human_player}"
	end

	def computer_player
	end

end

Player.new