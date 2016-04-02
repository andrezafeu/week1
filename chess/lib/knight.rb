class Knight < Initialposition

	def move?(x,y)
		@x = x
		@y = y
		differencex = x-@x_c
		differencey = y-@y_c
		totaldifference = differencex.abs-differencey.abs
		if totaldifference.abs == 1 && differencex <=2 && differencey <=2
			true
		else
			false
		end
	end

end