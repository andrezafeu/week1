class ParkingGarage
	
	def initialize(list_of_vehicles)
		@vehicles = list_of_vehicles
	end

	def count_wheels
		@vehicles.reduce(0) do |sum, vehicle|
			sum + vehicle.wheels
		end
	end
end