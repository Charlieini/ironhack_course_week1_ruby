require 'pry'

class User

	def initialize

		puts "user?"

		user = gets.chomp

		puts "pass?"

		pass = gets.chomp

		@user = user
		@pass = pass

		check_pass

	end




	def check_pass
		
		if @pass == "pass"
			count_text
		else 
			puts "Wrong!"
		end

	end

	def count_text 

		puts "text?"

		text = gets.chomp 

		puts text.length

	end

end


carlos = User.new

carlos

#binding.pry


