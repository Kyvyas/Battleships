require_relative 'ship'

class Board

	attr_reader :ships
	attr_reader :width
  attr_reader :height
  

	def initialize
		@ships = []
		@width = 10
		@height = 10
		
	end

	def place_ship(ship)
		@ships << ship.coordinates
		ship
	end


end
