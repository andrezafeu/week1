# This file is named app.rb

# PULL IN CLASSES

require_relative "lib/car.rb"
require_relative "lib/person.rb"

my_car = Car.new("black", "Mazga", "Mazga3", "Broom")
other_car = Car.new("red", "Nissan", "Nissan2", "BROOOOOOM")

my_car.rev
other_car.rev

my_car.visit_city("Homestead")

my_car.cities_visited

my_car.visit_city("Miami")

my_car.cities_visited

andreza = Person.new("Andreza", 28)
andreza.print_person

andreza.age = 27
andreza.print_person
andreza.name = "Nizar"
andreza.print_person