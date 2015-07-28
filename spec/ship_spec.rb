require 'ship'

describe Ship do

	it "has a position once placed" do
		subject.position('A3')
		expect(subject.coordinates).to eq(['A3'])
	end

	it 'is not placed when created' do
		expect(subject.placed).to eq(false)
	end
# when its created, it is not placed

# 	after it has been placed, it is placed

end