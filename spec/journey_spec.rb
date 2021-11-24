require 'journey'

describe Journey do
  # context 'initialize'
  # it 'created a object of itself' do
  #   expect(subject).to be_an_instance_of(Journey)
  # end 
  
  let(:station) { double(Station)}
  let(:station2) { double(Station)}

  it 'has an entry station' do
    # card = Oystercard.new
    # card.top_up(20)
    # card.touch_in(:station)
    journey = Journey.new("Oval")
    expect(journey.entry_station).to eq("Oval")
  end

  it "has an exit station" do
    journey = Journey.new
    expect(journey.exit_station).to eq nil
  end
end

