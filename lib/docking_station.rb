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
    working_bike = @bikes.find{|bike| bike.working?}
    if working_bike.nil?
      raise "No working bikes"
    else
      @bikes.delete(working_bike)
    end
    # @bikes.pop
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


end
