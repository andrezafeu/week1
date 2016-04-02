class Print
	def print_string(array)
		array.each do |item|
			i = 10
			while i>0 do
				if item.rating.round >= i
					print "|#|"
				else
					print"| |"
				end
				i = i-1
			end
		end
	end
end