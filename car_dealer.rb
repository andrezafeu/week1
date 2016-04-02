class Car_dealer

	def initialize 
		@cars_array = [
			{:dealer => "Ford", :car => "Fiesta"},
			{:dealer => "Ford", :car => "Mustang"},
			{:dealer => "Honda", :car => "Civic"},
			{:dealer => "Honda", :car => "CR-V"}
			]
	end

	def cars(brand)
		puts @cars_array.select { |x| x[:dealer] == brand}
	end

end

chosen_brand = Car_dealer.new
chosen_brand.cars("Ford")
chosen_brand.cars("Honda")
