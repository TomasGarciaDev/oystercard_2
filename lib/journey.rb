# require_relative 'oystercard'
# require_relative 'station'

class Journey
  attr_reader :entry_station, :exit_station
  def initialize(station = nil)
    @entry_station = station
    @exit_station = nil
    @journey = {}
  end

  # def finish
  #   @journey[:a] = @entry_station
  #   @journey[:b] = @exit_station
  #   @journey
  # end
end
