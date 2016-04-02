class Board
	def initialize(array)
		@array = array
	end

	def move? (position, destination)
		@p_x = position[0]
		@p_y = position[1]
		@d_x = destination[0]
		@d_y = destination[1]
		piece = @array[p_x][p_y]
		if piece.move?(d_x,d_y) == true
			position = destination
			destination = nil
		else
			puts "Choose another destination"
		end
		puts @pieces[position]
		puts @pieces[destination]

		# if destination > [8,8]
		# 	puts "Not a valid move"
		# end
	end
end