class Player

	attr_accessor :actual_location

	def initialize
		@actual_location = ""
		prison
	end

	def exit

	end

	def search

		if @actual_location == "prison"
			puts "Key!"
			prison
		else 
			puts "Nothing"
		end
	end

	def prison 

		@actual_location = "prison"

		puts "prison E"
		direction = gets.chomp 

		if direction == "E"
			hall
		elsif direction == "exit"
			exit
		elsif direction == "search"
			search
			prison
		else 
			puts "Wrong direction"
			prison
		end

	end

	def hall 

		@actual_location = "hall"

		puts "Hall N S W E"
		direction = gets.chomp

		if direction == "N"
			garden
		elsif direction == "S"
			dead_end
		elsif direction == "W"
			prison
		elsif direction == "E"
			gallery
		elsif direction == "exit"
			exit
		elsif direction == "search"
			search
			hall
		else 
			puts "wrong direction"
			hall
		end
			
	end

	def garden 

		@actual_location = "garden"

		puts"garden S"

		direction = gets.chomp 

		if direction == "S"
			hall
		elsif direction == "exit"
			exit
		elsif direction == "search"
			search
			garden
		else 
			puts "wrong direction"
			garden
		end
	end
 
 	def gallery

 		@actual_location = "gallery"

 		puts"gallery N"

 		direction = gets.chomp

 		if direction == "N"
 			garden
 		elsif direction == "search"
		search
		gallery
		elsif direction == "exit"
			exit
 		else
 			gallery
 		end
 	end

 	def dead_end

 		@actual_position = "dead end"

 		puts "dead end N"

 		direction = gets.chomp 

 		if direction == "N"
 			hall
 		elsif direction == "exit"
 			exit
 		elsif direction == "search"
 			search
 			dead_end
 		else
 			dead_end
 		end
 	end

 	def exit 
 		puts "game over"
 	end

end


Player.new



