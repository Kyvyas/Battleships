require_relative 'ship'

class Board

	attr_reader :ships
	attr_reader :width
  attr_reader :height
  attr_reader :fired_locations, :location
  
	def initialize
		@ships = []
		@width = 10
		@height = 10
		@fired_locations = []
	end

	def place_ship(ship)
		ships << ship.coordinates
		ship
	end

	def fire(location)
		fired_locations << location
		if hit?
			return "You have hit a boat" 
		else
			"you have missed"
		end
	end

	def hit?
		fired_locations == ships.flatten
	end
end
