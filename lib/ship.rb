
class Ship

	attr_reader :coordinates, :placed

	def initialize
		@placed = false
		@coordinates = []
	end

	def position(ship_position)
		@coordinates << ship_position
	end

end
