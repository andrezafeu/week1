class Pawn < Initialposition

	def move?(x,y)
	@x = x
	@y = y
	differencey = y-@y_c
		if x != @x_c
			false
		elsif @color == "black" &&  differencey > 0
			false
		elsif @color == "white" && differencey < 0
			false
		elsif @y_c == 2 || @y_c == 7
			if differencey.abs <= 2
				true
			else
				false
			end
		else
			if differencey.abs == 1
				true
			else
				false
			end
		end
	end

end