require 'pry' 

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Charlie's place", "Granollers", 3, 35),
  Home.new("Aidi's Place", "Valencia", 5, 46),
  Home.new("paco´s place", "Campanar", 8, 70),
  Home.new("Alvaro's place", "Barcelona",2, 45),
  Home.new("Nirie's place", "Barcelona",1,33),
]

def print_homes(array)

 	array.each do |home| 
 		puts "#{home.name} in #{home.city}\n 
					Price #{home.price} a night\n
					Capacity #{home.capacity}"
	end
end


def sort(array)

	puts "Choose one: HL: High to low, LH: Low to High, C: Capacity"
	option = gets.chomp


	if option == "LH"
		sorted_homes = array.sort {|home1 ,home2| home2.price <=> home1.price}
	elsif option == "C"
		sorted_homes = array.sort {|home1 ,home2| home1.capacity <=> home2.capacity}
	else 
		sorted_homes = array.sort {|home1 ,home2| home1.price <=> home2.price}
	end

	print_homes(sorted_homes)

	average(sorted_homes)

end

def where(array)

	puts "City?"
	where = gets.chomp.capitalize

	located_homes = array.select do |place| 
		place.city == where
	end

	print_homes(located_homes)

	average(located_homes)
end


def average(array)

  average_price = array.reduce(0.0) {|sum,hm| sum + (hm.price/array.length)}
 	
  puts "Average price #{average_price}"
end

def price(array)

	puts "Name the price!"
	offer = gets.chomp.to_i

	correct_price = array.find do |home| 
		home.price == offer
	end

  puts correct_price.name
end

binding.pry 

#price(homes)

#sort(homes)

# average(homes)

# where(homes)