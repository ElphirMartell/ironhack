require 'pry'


class VikingTown
	def initialize(name)
		@name = name
		@town = []
	end

	def add_vikings(viking)
		@town.push(viking)
		puts @town
	end

	def call_to_arms
		@town.select do |viking|
			@army = (viking.age >= 15) && (viking.age <=45)
			binding.pry
		end
	end

end


class Viking
	attr_reader :age, :name, :strength, :health
	def initialize(name, health, strength, age, weapon)
		@name = name
		@health = health
		@strength = strength
		@age = age
		@weapon = weapon
	end

	def self.fight(viking1, viking2)
		until (viking1.health <= 0) || (viking2.health <= 0)
			puts "#{viking1.name}'s life is #{viking1.health} and #{viking2.name}'s #{viking2.health}"
			viking1.health -= viking2.strength; viking2.health -= viking1.strength
		end
		viking1.health > 0 ? "#{viking1.name} is the winner!!" : "#{viking2.name} is the winner!!"
	end

	def set_attack_power
		case @weapon
		when @weapon = "axe"
			@strength = @strength * 5
		when @weapon = "spear"
			@strength = @strength * 3
		when @weapon = "bow"
			@strength = @strength * 2
		when @weapon = "shield"
			@health = @health * 3
		else
			@strength
		end
	end
	
end

town = VikingTown.new("Kjorseyrr")
town.add_vikings(Viking.new("Yngvar", 20, 10, 34, "axe"))
town.add_vikings(Viking.new("Thorito", 99, 199, 13, "axe"))
town.add_vikings(Viking.new("Ragnar", 15, 15, 29, "axe"))
town.add_vikings(Viking.new("Harald", 25, 12, 35, "spear"))
town.add_vikings(Viking.new("Uri", 30, 13, 25, "bow"))
town.call_to_arms


