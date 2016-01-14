require 'pry'

class Game

	attr_reader :dungeon

	def initialize (dungeon,player)

		@dungeon = dungeon
		@player = player  
		@dungeon[0].move

	end

	def move

		case $actual_position 

		when "prison"
			@dungeon[0].move

		when "hall"
			@dungeon[1].move

		when "gallery"
			@dungeon[2].move

		when "garden"
			@dungeon[3].move

		when "dead_end"
			@dungeon[4].move

		end

		move

	end

end

class Room

	attr_reader :doors,:name

	def initialize(name,doors)

	@doors = doors
	@name = name 

	end

def location

		puts "You are in #{@name}"

	end

	def move

		location

		puts ">"

		direction = gets.chomp 
 		
 		can_move(direction)

 		case direction 

 		when "exit"
 			
 			game_over

 		when "E"

 			if @name == "prison"
 				$actual_position = "hall"
 			else 
 				$actual_position = "gallery"
 			end
 		end
 	end

	def can_move(direction)

		@doors.each do |coord|
			if coord.include? direction 

			else 
				puts "wrong way, try another"
				move
			end
		end
	end

	def game_over 

		puts "Game over!"

	end

end

class Player

	def initialie

		$actual_position = "prison"

	end
		
end

prison1 = Room.new("prison",["E"])
hall2 = Room.new("hall",["N","S","E","W"])
gallery3 = Room.new("gallery",["W","N"])
garden4 = Room.new("garden",["S"])
dead_end5 = Room.new("dead_end",["N"])

dungeon = [prison1,hall2,gallery3,garden4,dead_end5]
ulkas = Player.new

#binding.pry

Game.new(dungeon,ulkas)

