require_relative 'bike'

class DockingStation

    attr_reader :bike

    def release_bike
        if @bike == nil
            raise Exception
        else
            Bike.new
        end

    #    Bike.new unless subject.bike == nil
    end

    def dock(bike)
        @bike = bike
    end

    # def bike
    #   @bike
    # end

end
