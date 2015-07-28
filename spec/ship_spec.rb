require 'ship'

describe Ship do

	# it 'has a size when created' do
	# 	ship = Ship.new(4)
	# 	expect(ship.size).to eq(4)
	# end


	it "has a position once placed" do
		subject.position('A3')
		expect(subject.coordinates).to eq(['A3'])
	end

	it 'is not placed when created' do
		expect(subject.placed).to eq(false)
	end

	# it 'has a size between 2 and 5' do
	# 	expect(subject.size(2)).to eq([2..5])
	# end



end