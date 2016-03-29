#lib/car.rb

class Car

	def initialize(color, make, model, sound)
		@color = color
		@make = make
		@model = model
		@sound = sound
		@cities = []
		@miles = 0
	end

  	def rev
  		puts @sound
	end

	def set_price(price)
		@price = price
	end

	def visit_city(the_city)
		@cities.push(the_city)
		puts "Now visiting #{the_city}"
	end

	def cities_visited
		puts "Cities visited: #{@cities}"
	end

	#other way to do it
	#def print_cities
		#@cities.each do |one_city|
			#puts "This car once visited #{one_city}"
		#end
	#end
end