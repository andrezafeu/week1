require "imdb"
require_relative "lib/movie.rb"

movies = []

movies_info = IO.read("lib/movies.txt").each_line do |line|
	movies << line.chop
end

imdb_array = []

#puts movies 

#{}"#{movies_info}"

movies.each do |item|
	search = Imdb::Search.new(item)
	the_movie = search.movies[0]
	imdb_array.push(the_movie)
	# puts the_movie.rating.round
	# if the_movie.rating.round == 10
		# movies.each do |item|
			
	# puts "----------------"
	#puts the_movie.title
end

imdb_array = movies.map do |item|
	item.rating
  end

#   puts imdb_array

# movies.each do |item|
# 	if item.rating == 9
# 		puts "it works"
# 	end
# end
printer = Print.new
printer.print_string(imdb_array)

