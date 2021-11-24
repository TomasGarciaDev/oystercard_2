require_relative 'oystercard'
require_relative 'station'

class Journey
  attr_reader :entry_station, :exit_station
  def initialize(station = nil)
    @entry_station = station
    @exit_station = nil
  end
end
