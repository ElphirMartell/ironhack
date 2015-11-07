require 'pry'

class Lexiconomitron

	def eat_t(input)
		string = input.tr("tT", "")
	end

	def shazam(input)
		array = input.reverse.tr("tT", "").split
	end

	def oompa_loompa(input)
		if input.class == Fixnum
			array = fixnum_to_string(input)
		else
			array = input.to_s.scan([a-zA-z])
		end
		array.map do |word|
			if word.length >= 4
				eat_t(word)
			else
				word
			end 
		end
	end

	def fixnum_to_string(input)
		input.to_s.scan([a-zA-z])
	end

end

test = Lexiconomitron.new
test.eat_t("This is a boring tesT")
test.shazam("This is a boring tesT")
test.oompa_loompa("This ist a boring tesT")
test.oompa_loompa("hola que tal ..--*,123")