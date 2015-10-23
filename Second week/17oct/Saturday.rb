#SATURDAY 17/10:
#---------------



class Car
	attr_reader :wheels, :noise

	def initialize(noise, engine, wheels)
		@noise = noise
		@engine = engine
		@wheels = wheels
	end


	def make_noise
		output_noise = @noise + @engine.noise.to_s
		puts output_noise
	end

end


class Engine

	attr_reader :noise

	def initialize(noise)
		@noise = noise
	end

end

class AlternativeEngine
	attr_reader(:noise)

	def initialize
		#@noise = ramdom_noise(rand(0..2))
		@noise = random_noise(rand(0..2))
	end

	def random_noise(num)
	 	case num
	 	when 0 
	 		@noise="A"
	 	when 1
	 		@noise="B"
	 	when 2 
	 		@noise="C"
	 	end
	end

end

class Wheels

	def initialize(vehicules)
		@vehicules = vehicules
	end

	def count_wheels
		total_wheels = 0

		@vehicules.each do |item|
			total_wheels = total_wheels + item.wheels
		end
		 puts total_wheels
	end
end


class Noises

	def initialize(vehicules)
		@vehicules = vehicules
	end

	def print_noises
		@vehicules.each do |item|
			puts item.noise
		end

	end
end


engine1 = Engine.new("Rummm")
car1 = Car.new("Brumm",engine1,4)
#car1.make_noise

engine2 = AlternativeEngine.new
car2 = Car.new("Brumm",engine2,5)
#car2.make_noise


vehicules = [car1,car2]

wheels = Wheels.new(vehicules)
wheels.count_wheels
noises = Noises.new(vehicules)
noises.print_noises

