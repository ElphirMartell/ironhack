class Person
	attr_reader :name, :age
	def initialize(name, age) #hay que inicializar las dos variable en initialize y también debajo con la @ para que no de error
		@name = name
		@age = age
	end

	def man
		puts "Hola, soy #{name} y tengo #{age} años" #este método da una frase de presentación de la persona
	end

	def birthday
		@age += 1 #este método sube la edad +1 cuando la llamas
	end

end

pedro = Person.new("pedro", 478) #hemos creado un nuevo objeto clase persona, ahora podemos hacer la función man para que aparezca la frase que está escrita en ella

