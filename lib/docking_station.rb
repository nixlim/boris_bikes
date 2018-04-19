require_relative 'bike'

class DockingStation

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No Bikes" if self.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Docking station full' if self.full?
    @bikes << bike
  end

  def full?
    @bikes.count == DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end

end
