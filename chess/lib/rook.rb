require_relative "initial_position.rb"

class Rook < Initialposition

	def move?(x,y)
		@x = x
		@y = y
		if x == @x_c || y == @y_c
			# @current_position = [x, y]
			true
		else
			false
		end
	end
end