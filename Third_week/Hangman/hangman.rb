require_relative "player.rb"

class Game
	attr_accessor :human_player, :computer_player

	def intro
		puts "********Welcome to*********"
		puts "*******H A N G M A N*******"
		puts "***Game created by S.Roa***"
		puts ""
		puts "Do you want to start?"
		puts "1 => Start"
		puts "2 => Exit"
		choice = gets.to_i
		case choice

		when choice = 1
			puts "Let's get started!!"

		when choice = 2
			puts "Ooooh, sad to see you go!!"

		else puts "Please, choose 1 or 2"
			
		end
	end




	def word
		dictionary = File.open(dictionary.txt)

	end

end


