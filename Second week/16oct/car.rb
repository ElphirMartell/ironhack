class Car

	def initialize(make_noise, double_noise, big_noise)
		@make_noise = make_noise
		@double_noise = double_noise
		@big_noise = big_noise
	end

	def make_noise
		2.times do |car|
			puts "Broooom"
		end
	end

	def double_noise(make_noise)
		@make_noise = make_noise
		puts
	end

	def big_noise
		puts "BRRROOOMMM"
	end

end

audi = Car.new
audi.make_noise

tata = Car.new
tata.big_noise


