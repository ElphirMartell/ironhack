require 'pry'

class Player
	attr_reader :up, :down, :right, :left, :sword, :torch, :runaway, :run

	def initialize
		@up = "norte"
		@down = "sur"
		@right = "este"
		@left = "oeste"
		@sword = "sword"
		@torch = "torch"
		@runaway = "huir"
		@run = "correr"
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
		puts "Now you're in a tall tower." 
		puts "There is a princess on the top, waiting for a gentle knight to rescue her."
		puts "But it is not so easy because there are a bear blocking the entrance. What do you want to do?"
		tower_choice = gets.chomp
		if tower_choice == @player.sword
			case rand (0..1)
			when 0
				puts "Great, you've killed the bear!!now you can go to rescue her"
				hunt
			when 1
				puts "Oooohh, the bear beat you and now you're dead. Bad luck!!"
			end
		elsif tower_choice == @player.torch
			rand(0..4)
			if rand == 0
				puts "Bravo, you've killed the bear!!now you can go to rescue her"
				hunt
			else
				puts "Oooohh, the bear beat you and now you're dead. Bad luck!!"
			end
		else
			puts "Won't you go to rescue the princes?? You're such a coward, shame on you!!!"
		end
	end

	def hunt
		puts "Then you managed to rescue the princess, but some evil guys are angry for it."
		puts "They are chasing you. Now you can face it and be a hero (whether you live or not)."
		puts "But you can also runaway, with the princess or without her."
		puts "The more coward you are, the highest probability to live you have."
		puts "What do you prefer?"
		final_choice = gets.chomp
		if final_choice == @player.sword
			case rand(0..5)
			when 0
				puts "Congratulations, you're alive and you're a hero. Lucky you, The princess loves you now!!"
			else
				puts "Congratulations, you're a hero, but a dead one. Rest in Peace"
			end
		elsif final_choice == @player.runaway
				puts "Wise choice Mr. Coward, the cemeteries are full of heroes..."
		elsif final_choice == @player.run
			case rand(0..1)
			when 0
				puts "Good, you and the princess are both alive!! Thanks for save my wife, now i'm going to marry her and you will be invited to the marriage"
			else
				puts "Unluckily they have caught you, but don't worry, the dungeons of the castle are great to spend a time in"
			end
		else
			puts "The keys that you clicked you won't be useful now. You have to choose between face the enemies, run with the princess or runaway"
			hunt
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




