require 'docking_station'
require 'bike'

describe DockingStation do
    let(:docking_station) {DockingStation.new}
    let(:bike) {Bike.new}

    it "should respond to release_bike method" do
        expect(docking_station).to respond_to(:release_bike)
    end

    it "should release a working bike" do
        subject.dock(Bike.new)
        bike = subject.release_bike
        expect(bike).to be_working
    end

    it "should allow a bike to be docked" do
        expect(docking_station).to respond_to(:dock)
    end

    describe '#dock' do
      it "docks a bike" do
        expect(docking_station.dock(bike)).to include(bike)
      end

      it 'raises an error when full' do
        DockingStation::DEFAULT_CAPACITY.times {docking_station.dock(bike)}
        expect{docking_station.dock(bike)}.to raise_exception 'Docking station full'
      end

    end

    it "states what bike is docked" do
      docking_station.dock(bike)
      expect(docking_station.bikes).to include(bike)
    end

    it "release_bike raises an error when no bikes available" do
        expect {subject.release_bike}.to raise_error(RuntimeError, "No Bikes")
    end

    it "has a default capacity" do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    
end
