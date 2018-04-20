require_relative 'bike'

class DockingStation

  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No Bikes" if empty?
    find_working_bike.nil? ? (raise "No working bikes") : @bikes.delete(find_working_bike)
  end

  def dock(bike)
    raise 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

  def find_working_bike
    @bikes.find{|bike| bike.working?}
  end


end
