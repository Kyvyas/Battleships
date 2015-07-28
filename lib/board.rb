require_relative 'ship'

class Board

  attr_reader :fired_locations, :location, :height, :width, :ships  

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
		fail "You have alread fired here" if fired_locations.include?(location)
		fired_locations << location
		return "You have hit a boat" if hit?
		"you have missed"
	end

	def hit?
		ships.flatten.include?(fired_locations.last)
	end
end
