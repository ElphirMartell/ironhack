require_relative "StringCalculator"

calculator = StringCalculator.new

puts 'Add "":'
puts calculator.add("") == 0 ? "ok" : "error"
puts 'Add "7":'
puts calculator.add("7") == 7 ? "ok" : "error"
puts 'Add "7,5":'
puts calculator.add("7,5") == 12 ? "ok" : "error"
puts 'Add "7,5,1,3,2":'
puts calculator.add("7,5,1,3,2") == 18 ? "ok" : "error"