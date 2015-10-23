class Game
	def initialize(players, board)
		@number_of_plays = 0
		@human_player, @computer_player = players.shuffle #el método shuffle desordena el array, lo que te permite hacer aleatoria la salida (o empezar tú o no en este juego)
		@board = board
	end

	def ask_for_move
		puts "Where do you want to put your sign?"
		user_input = gets.chomp  #al ser una variable de instancia @user_input se la puede llamar en otra función, como la de abajo
		save_input_in_board(user_input)
	end

	def save_input_in_board(input)
		coordinates = human_move_to_coordinate(input)
		x = coordinates[0]
		y = coordinates[1]
		@board[coordinates]
		  #Coger el board y meter el input donde corre el nombre del jugador para comunicar funciones

	end


	def switch_player
	end

	def human_move_to_coordinate(human_move)
     mapping = {
       "1" => [0, 0],
       "2" => [1, 0],
       "3" => [2, 0],
       "4" => [0, 1],
       "5" => [1, 1],
       "6" => [2, 1],
       "7" => [0, 2],
       "8" => [1, 2],
       "9" => [2, 2]
     }
     mapping[human_move]
   end 

   def first_move
   	if human_player  {
   		ask_for_move
   	}
   	else computer_player 
end