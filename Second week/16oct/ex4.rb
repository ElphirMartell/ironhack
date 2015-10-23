class Car

	def make_noise
		2.times do |car|
			puts "Broooom"
		end
	end

	def visited_cities(cities)
		@cities = []
		@cities.push(visited_cities)
		puts @cities
	end

end

class Racing_car < Car

	def noise
		puts @make_noise.upcase
	end
end


IO.write("cities.txt", "Madrid, Barcelona, Berlin")
