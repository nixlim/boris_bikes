require 'bike'

describe Bike do

    bike = Bike.new

  it 'should state if bike is working or not' do
    expect(bike.working?).to eq true
    expect(bike).to respond_to(:broken=)
    expect {bike.broken = true}.to change {bike.working?}
  end

end
