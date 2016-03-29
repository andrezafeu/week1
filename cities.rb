cities = ["miami", "madrid", "barcelona"]

cities.map do |item|
	puts item.upcase
end

#different way to write
pretty_cities = cities.map {|city| city.capitalize}