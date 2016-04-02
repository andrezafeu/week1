class Bishop < Initialposition

	def move?(x,y)
		@x = x
		@y = y
		differencex = x-@x_c
		differencey = y-@y_c
		if differencex.abs == differencey.abs
			true
		else
			false
		end
	end

end