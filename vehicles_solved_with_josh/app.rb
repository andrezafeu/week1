require_relative("lib/bike.rb")
require_relative("lib/car.rb")
require_relative("lib/helicopter")
require_relative("lib/train.rb")
require_relative("lib/parking_garage.rb")

bike = Bike.new
car = Car.new
helicopter = Helicopter.new
train = Train.new

vehicles = [bike, car, helicopter, train]

my_garage = ParkingGarage.new(vehicles)
puts "The total number of wheels is #{my_garage.count_wheels}"

