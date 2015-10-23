#Exe1

require "pry"

class Software
	def play
		Login.new.log
		text = Text.new.text
		choice = Menu.new.menu_operation(text)
		Operation.new
	end
end


class Login

	def initialize
		@user = "usuario"
		@password = "passuser"
	end

	def log
		get_user
		get_password
		validate
	end

	def get_user
		puts "Enter your user"
		@user_input = gets.chomp
	end

	def get_password
		puts "Enter your password"
		@password_input = gets.chomp
	end

	def validate
		if @user_input == @user && @password_input == @password
		puts "You're in"
		else puts "You shall not pass!!!"
		end
	end

end

class Text
	attr_reader :text_input
	def text
		puts "Please insert a text"
		@text_input = gets.chomp
	end
end

class Menu

	def menu_operation(text_input)
		puts "Please insert what you wanna do"
		choice = gets.to_i
		case choice
		when 1
			Operation.new.word_count(text_input)
		when 2
			Operation.new.letter_count(text_input)
		when 3
			Operation.new.reverse(text_input)
		when 4
			Operation.new.uppercase(text_input)
		when 5 
			Operation.new.lowcase(text_input)
		else puts "Please choose 1 to 5"
		end
	end

end

class Operation
	attr_reader :word_count, :letter_count, :reverse, :uppercase, :lowcase

	def word_count(text_input)
		puts text_input.split(/\s+/).length
	end
	def letter_count(text_input)
		puts text_input.length
	end

	def reverse(text_input)
		puts text_input.reverse
	end

	def uppercase(text_input)
		puts text_input.upcase
	end

	def lowcase(text_input)
		puts text_input.lowcase
	end

end


usuario = Software.new
usuario.play

=begin usuario.get_user
usuario.get_password
usuario.validate
=end

