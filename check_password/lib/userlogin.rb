class Userlogin
	attr_reader :correct_username, :correct_password
	
	def initialize(correct_username, correct_password)
		@correct_username = correct_username
		@correct_password = correct_password
		check
		# Checkcredentials.check
	end

	# module Checkcredentials
	def check
			puts "Give me your credentials to log in"
			puts "Username:"
			@username = gets.chomp
			puts "Password:"
			@password = gets.chomp
			check_credentials
	end
	# end

	def check_credentials
		while @username != @correct_username || @password != @correct_password do
			puts "Wrong! Do it again!"
			p @username
			p @correct_username
			p @password
			p @correct_password
			check
			# Checkcredentials.check
		end
		puts "Success!"
	end

end
