class Currentroom
	# attr_reader :command
	def initialize (array_of_places)
		@array_of_places = array_of_places
		@array_of_position = array_of_position
		puts "You are in a dark room. There is a door to the east."
		next_step
	end

	def next_step
		get_command
		while @command != @array_of_places[0][:direction]
			puts "There is nothing here."
			get_command
		end
		while @array_of_position[0] && array_of_position[1] >=0
			puts "You are in the next room. Where would you like to go next?"
			get_command
		end
	end

	def get_command
		@command = gets.chomp		
	end

end
