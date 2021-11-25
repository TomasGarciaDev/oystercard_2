require 'journey'
require 'oystercard'

describe Journey do
  before(:each) do
    let(:card) { instance_double(Oystercard, top_up: 10) }
    let(:Oval) { instance_double(Station, station_name: "oval", zone: 2) }
    let(:Bow) { instance_double(Station, station_name: "bow", zone: 3) }

    allow(:card).to receive(:touch_in).with_message(:oval)
  end
  it 'has an entry station' do
    journey = Journey.new
    :card.touch_in(:Oval)
    expect(journey.entry_station).to eq(:Oval)
  end

  xit "has an exit station" do
    journey = Journey.new
    expect(journey.exit_station).to eq nil
  end

  xit 'should store the entry station at touch_in' do
    card =  Oystercard.new
    card.top_up(20)
    card.touch_in(:station)
    expect(card.journey.entry_station).to eq :station
  end

  # it 'should store the exit station at touch_out' do
  #   card = Oystercard.new
  # end
end

