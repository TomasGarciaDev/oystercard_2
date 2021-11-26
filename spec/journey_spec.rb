require 'journey'
# require 'oystercard'

describe Journey do
  # before(:each) do
  #   let(:card) { instance_double(Oystercard, top_up: 10) }
  #   let(:Oval) { instance_double(Station, station_name: "oval", zone: 2) }
  #   let(:Bow) { instance_double(Station, station_name: "bow", zone: 3) }

  #   allow(:card).to receive(:touch_in).with_message(:oval)
  # end
  it 'has an entry station' do
    # # station = double('Station')
    # # station.should.receive(:new).with("Oval", 2).and_return()
    # # card = Oystercard.new
    # # card.top_up(10)
    # # card.touch_in(station)
    # # expect(subject.entry_station).to eq(station)

    card_instance = double('Oystercard')
    station_instance = double('Station', station_name: "Oval", zone: 2)
    # allow(@station_instance).to receive(:station_name).and_return('Oval')
    allow(card_instance).to receive(:top_up).and_return(10)
    journey = Journey.new(station_instance)
    allow(card_instance).to receive(:touch_in).with(station_instance).and_return(journey)
    # card_instance.touch_in(@station_instance)
    expect(journey.entry_station).to eq(station_instance)
  end

  it 'has an entry station eq nil' do

    card_instance = double('Oystercard')
    station_instance = double('Station', station_name: "Oval", zone: 2)
    allow(card_instance).to receive(:top_up).and_return(10)
    journey = Journey.new
    expect(journey.entry_station).to be nil
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
end

