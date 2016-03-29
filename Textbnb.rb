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
  Home.new("Andreza's place","Belo Horizonte", 1, 50),
  Home.new("Benjamin's place","Miami", 2, 50),
  Home.new("Vera's place","Rio de Janeiro", 3, 48),
  Home.new("Amanda's place","San Francisco", 4, 60),
  Home.new("John's place","San Diego", 2, 45),
  Home.new("Diego's place","Miami", 2, 55)
]

def print_homes (array)
  array.each do |hm|
  puts "Name: #{hm.name} in #{hm.city}"
  puts "Price: #{hm.price} a night"
  end
end

# print_homes(homes)

sorted = homes.sort do |home1, home2|
  home1.price <=> home2.price
end

print_homes(sorted)

puts "How would you like to sort the price? Answer Lower First or Higher First" 

sort_by = gets.chomp

def sort_by_higher_or_lower (array, sort_by)
  if sort_by == "Higher First"
      array.reverse
  else
      array
  end
end

ordered = sort_by_higher_or_lower(sorted, sort_by)
print_homes(ordered)

puts "Which city are you looking for?" 

sort_by_city = gets.chomp

city_chosen = homes.select do |hm|
  hm.city == sort_by_city
end

print_homes(city_chosen)

  total_prices = city_chosen.reduce(0.0) do |sum, hm|
    sum + hm.price
  end


puts "The average price of the city you are looking at is:"
puts total_prices/city_chosen.length

puts "What price do you have in mind?"
price_in_mind = gets.chomp.to_f

home_price_in_mind = city_chosen.find do |hm|
  hm.price == price_in_mind
end

puts home_price_in_mind.name