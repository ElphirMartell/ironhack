require 'imdb'

movies = []

IO.readlines("movies.txt").each do |movie|
	movies.push(movie)
	end 

puts movies