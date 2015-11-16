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
		@town.map do |viking|
			@army = (viking.age >= 15 || viking.age <=45)
		end
	end

	def fight(fighter1 fighter2)
		until (fighter1.health == 0) || (fighter2.health == 0) do
			fighther1.health = fighter1.health - fighter2.set_attack_power
			fighther2.health = fighter2.health - fighter1.set_attack_power
		end
		return "The winner is #{fighter.health != 0}"
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

yngvar = Viking.new("Yngvar", 20, 10, 34, "axe")
hjalmar = Viking.new("Hjalmar", 30, 13, 25, "bow")
town.fight(yngvar, hjalmar)

town.add_vikings(Viking.new("Yngvar", 20, 10, 34, "axe"))
town.add_vikings(Viking.new("Thorito", 99, 199, 13, "axe"))
town.add_vikings(Viking.new("Ragnar", 15, 15, 29, "axe"))
town.add_vikings(Viking.new("Harald", 25, 12, 35, "spear"))
town.add_vikings(Viking.new("Uri", 30, 13, 25, "bow"))
town.call_to_arms


