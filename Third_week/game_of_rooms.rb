require 'pry'

class Player
	attr_reader :up, :down, :right, :left, :sword, :torch

	def initialize
		@up = "norte"
		@down = "sur"
		@right = "este"
		@left = "oeste"
		@sword = "sword"
		@torch = "torch"
	end
end



class Game
	attr_reader :player
	
	def initialize(player)
		@player = player
	end

	def start_point
		puts "You're in a room. There are two doors, the yellow one and red one in front of you. From which door do you want to exit"
		start_point_choice = gets.chomp
		if start_point_choice == @player.up
			puts "Great you got it!! You pass to the second level: Tower"
			tower
		else
			puts "Te quedas donde estás por tonto"
		end
	end

	def tower
		puts "Now you're in a tall tower. There is a princess on the top, waiting for a gentle knight to rescue her. But it is not so easy because there are a bear blocking the entrance. What do you want to do?"
		tower_choice = gets.chomp
		if tower_choice == @player.sword
			case rand (0..1)
			when 0
				puts "Great, you've killed the bear!!now you can go to rescue her"
			when 1
				puts "Oooohh, the bear beat you and now you're dead. Bad luck!!"
			end
		elsif tower_choice == @player.torch
			rand(0..4)
			if rand == 0
				puts "Bravo, you've killed the bear!!now you can go to rescue her"
			else
				puts "Oooohh, the bear beat you and now you're dead. Bad luck!!"
			end
		else
			puts "Won't you go to rescue the princes?? You're such a coward, shame on you!!!"
		end
	end

end

sergio = Player.new
felipe = Player.new

game = Game.new(sergio)
game2 = Game.new(felipe)

game.start_point


#variable local => solo existe dentro función
#variable de instancia => solo existe dentro de una instancia de una clase 
#variable de clase => existe para todas las instancias de una clase




