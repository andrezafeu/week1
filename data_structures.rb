candies = {
	:chocolate => {
		:brands => [
		{
		:products => [
		0,
		1,
		{
		:name => "Kit Kat"
		}
		]
		}
		]
	}
}

puts candies [:chocolate][:brands][0][:products][2][:name] # "Kit Kat"



hash = {
	:wat => [
		0,
		1,
		{:wut => [
			0,
			[
				[0,
				1,
				2,
				3,
				4,
				5,
				6,
				7,
				8,
				{ :bbq => "Filet"
					}]]]}]
}

puts hash[:wat][2][:wut][1][0][9][:bbq]


arr = [[
		0,
		1,
		2,
		3,
		4,
		{:secret => {
			:unlock => [
				0,
				"12345"
			]
			}}]]


puts arr[0][5][:secret][:unlock][1]

