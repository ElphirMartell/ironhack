class Data
	def initialize
		@data = { "paco.perez" => "pape2015", "pepe.rodriguez" => "pero2014", "juangomez" => "jugo2013", "mariagarcia" => "mago2012" }
	end

	def login
		@data.has_key?()&&@data.has_value?()
	end
end