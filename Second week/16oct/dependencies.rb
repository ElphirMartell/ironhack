class Car
	def initialize(engine, start_noise)
		@start_noise = start_noise
		@engine = engine
	end

	def start_noise
		output_noise = start_noise + @engine.noise.to_s
		puts output_noise
	end
end

class Engine

	attr_reader :noise

	def initialize(noise)
		@noise = noise
	end

end

class AltEngine
	attr_reader :noise

	def initialize
		@noise = rand(0..2)
	end

	def random_noise(num)
		case num
		when 0 
			@noise ="A"
		when 1
			@noise = "B"
		when 2
			@noise = "3"
		end
	end

end

car1 = Car.new
car1("Broom","BAAA")

