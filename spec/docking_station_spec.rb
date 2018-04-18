require 'docking_station'
require 'bike'

describe DockingStation do

    docking_station = DockingStation.new
        bike = Bike.new


    it "should respond to release_bike method" do
        expect(docking_station).to respond_to(:release_bike)
    end

    it "should release a working bike" do
        expect(docking_station.release_bike).to be_an_instance_of(Bike)
        expect(bike).to be_working
    end

end
