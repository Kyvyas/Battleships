
class Ship

	attr_reader :coordinates, :placed, :size

	def initialize
		@size = size
		@placed = false
		@coordinates = []
	end

	def position(ship_position)
		@coordinates << ship_position
	end

	def size
	end

end
