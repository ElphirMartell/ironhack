class Car

	def make_noise
		puts "Broooom"
	end

	def big_noise
		puts "BRRROOOMMM"
	end

	def self.double_noise(car)  #el self permite que el method llame a la clase, en vez de afectar a la variable como los instance methods
		2.times do |car|
			puts car.make_noise  #aquí usamos el paréntesis para llamar a la variable (al ser minúscula estamos llamando a un coche cualquiera) y una vez ahí le ponemos el método anterior	
	end

	def 

end

audi = Car.new
audi.make_noise
Car.double_noise(audi)


