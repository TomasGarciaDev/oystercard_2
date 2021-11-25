require 'journey'
require 'oystercard'

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

  # it 'should know when a journey is finish' do
  #   expect(subject.finish).to be_an_instance_of(Hash)
  # end

  it 'should store the entry station at touch_in' do
    card =  Oystercard.new
    card.top_up(20)
    card.touch_in(:station)
    expect(card.journey.entry_station).to eq :station
  end

  # it 'should return the in and out of a Journey in a hash' do
  #   journey = Journey.new("Oval")
  #   @exit_station = "Bow"
  #   expect(journey.finish).to eq({:a=>"Oval", :b=>"Bow"})
  # end
end

