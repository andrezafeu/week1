require_relative "lib/home.rb"

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

homes.each do |hm|
  puts "#{hm.name} in #{hm.city}"
  puts "Price: #{hm.price} a night"
end

cities = []

cities = homes.map do |hm|
	hm.city
end

puts cities

total_capacities = 0.0

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

total_prices = 0

total_prices = homes.reduce(0) do |sum,hm|
	sum + hm.price
end

puts "The average price is:"
puts total_prices / homes.length

homes.each_with_index do |hm, index|
	puts "Home Number #{index+1}: #{hm.name}"
end

# Homes in San Juan
san_juan_homes = homes.select do |hm|
	hm.city == "San Juan"
end

# Homes with capacity 4 or more
high_capacity_homes = homes.select do |hm|
	hm.capacity >= 4
end

home_41_dollars = homes.find do |hm|
	  hm.price == 41
end

puts "The first home that costs $41 is:"
puts home_41_dollars.name


sorted = homes.sort do |home1, home2|
  home1.capacity <=> home2.capacity
end

hellos = {
  :english => "Hello",
  :spanish => "Hola",
  :french => "Bonjour"
}

hellos.each do |language, word|
  puts "The word for Hello in #{language} is: #{word}."
end