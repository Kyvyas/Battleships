require 'board'

describe Board do

	let(:ship) { double :ship, :coordinates => 'A5' }

	it { is_expected.to respond_to(:place_ship) }

	it 'has a ship once ship is placed' do
   allow(ship).to receive(:place) {ship}
   allow(ship).to receive(:coordinates) {ship}
   subject.place_ship ship
   expect(subject.place_ship ship).to be ship
  end

  it 'has a width of 10' do
  	expect(subject.width).to eq(10)
  end

  it 'has a height of 10' do
  	expect(subject.height).to eq(10)
  end

  it "can fire at a coordinate" do
    expect(subject).to respond_to(:fire).with(1).arguments
  end

  let(:location) { double :location }

  it "will tell you if you have hit a boat" do
    subject.place_ship ship
    expect(subject.fire("A5")).to eq("You have hit a boat")
  end


  # it 'has a direction' do
  # 	expect(subject).to respond_to(:direction)
  # end

end