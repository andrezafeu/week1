require_relative "lib/room.rb"

 # attr_reader :room, :description, :direction

personposition = [0,0]

array_of_rooms = [
		{:room => "Dark",
		:description => "You are in a dark room. There is a door to the east.",
		:direction => "E",
		:position => [0,0]},
		{:room => "Red",
		:description => "You  are in the red room. There is a door to the east.",
		:direction => "E",
		:position => [1,0]},
		{:room => "Blue",
		:description => "You are in the blue room. There is a door to the east.",
		:direction => "E",
		:position => [2,0]},
		{:room => "Green",
		:description => "You  are in the green room. There is a door to the east.",
		:direction => "E",
		:position => [3,0]},
		{:room => "White",
		:description => "You  are in the white room. There is a door to the east.",
		:direction => "E",
		:position => [4,0]}
	]

game = Currentroom.new(array_of_rooms)