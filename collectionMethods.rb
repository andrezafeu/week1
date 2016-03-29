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
  Home.new("Ariel's place", "San Juan", 4, 49)
]

# for pos in 0..100
#   puts homes[pos].name
# end

# homes.each do |hm|
#   puts hm.name
# end

#same code with curly braces
# homes.each { |hm|
#   puts hm.name
# }

# hm = Home.new("Nizar's place", "San Juan", 2, 42)

# puts hm.name

def print_homes (array)
	array.each do |hm|
	puts "Name: #{hm.name} in #{hm.city}"
	puts "Price: #{hm.price} a night"
	end
end

print_homes(homes)

cities = homes.map do |hm|
			hm.city
		end

puts cities
puts homes

prices = homes.map do |hm|
			hm.price
		end

puts prices

def averagePrice (array)
	sum = 0
	array.each do |price|
		sum += price
	end
	sum/array.length
end

puts averagePrice(prices)

total_prices = homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts "The average price is"
puts total_prices / prices.length


total_capacities = 0.0

homes.each do |hm|
  total_capacities = total_capacities + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length


#better way to do this:
total_capacities = homes.reduce(0.0) do |sum, hm|
	sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities/homes.length

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end

#Homes is San Juan
san_juan_homes = homes.select do |hm|
	hm.city == "San Juan"
end

high_capacity_homes = homes.select do |hm|
	hm.capacity>=4
end

home_41_dollars = homes.find do |hm|
	hm.price ==41
end

puts "The first home that costs $41 is:"
puts home.home_41_dollars.name

sorted = homes.sort do |home1, home2|
	home1.capacity <=> home2.capacity
end

rng = 1..42
rng.each do |number|
	puts "The next number in the range is #{number}"
end

double = rng.map do |number|
	number*2
end

puts double

hellos = {
	:english => "Hello",
	:spanish => "Hola",
	:french => "Bonjour"
}

hellos.each do |language, word|
	puts "The word for Hello in #{language} is #{word}"
end
}