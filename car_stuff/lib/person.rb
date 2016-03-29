class Person
attr_reader :name
attr_accessor :age
	def initialize (name, age)
		@name = name
		@age = age
	end

	def print_person
		puts "The person name is #{name} and the age is #{age}"
	end
end

