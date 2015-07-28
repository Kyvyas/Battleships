
class Ship

	attr_reader :coordinates, :placed

	def initialize
		@placed = false
		@coordinates = []
	end

	def position(x)
		@coordinates << x
	end

end
