class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end


homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Bianca's place", "Hialeah", 1, 40),
  Home.new("RJ's place", "Pittsburgh", 4, 60),
  Home.new("Faraz's place", "Brickell", 2, 39)
]

def print_homes(array_of_homes)
	array_of_homes.each do | home | 
		puts "#{home.name} in #{home.city}"
		puts "Price: #{home.price}, Capacity: #{home.capacity}\n\n"
	end
end


user_input = ""
while user_input != "exit"
	puts "Enter a command to see homes: "
	puts "price highest, price lowest, capacity"
	user_input = gets.chomp

	if user_input == "price highest"
		sorted_highest = homes.sort { | home1, home2 | home2.price <=> home1.price }
		print_homes(sorted_highest)
	elsif user_input == "price lowest"
		sorted_lowest = homes.sort { | home1, home2 | home1.price <=> home2.price }
		print_homes(sorted_lowest)
	elsif user_input == "capacity"
		sorted_capacity = homes.sort { | home1, home2 | home2.capacity <=> home1.capacity }
		print_homes(sorted_capacity)	
	end
end




