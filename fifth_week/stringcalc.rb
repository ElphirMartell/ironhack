class StringCalculator

def numbers(string)
	puts "Escribe un número"
	string = gets.chomp.to_s
	array = string.split(",")
	if array.size == 0
		return "The result es 0"
	else
	result = array.inject {|num| :+}
	end
	return result
end