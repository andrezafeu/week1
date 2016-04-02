class King < Initialposition

	def move?(x,y)
		@x = x
		@y = y
		differencex = x-@x_c
		differencey = y-@y_c
		if differencex>=-1 && differencex<=1 && differencey>=-1 && differencey<=1
			true
		else
			false
		end
	end

end