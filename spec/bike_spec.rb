require 'bike'

describe Bike do

    bike = Bike.new

  it 'should state if bike is working or not' do
    expect(bike.working?).to eq true
  end

  it 'should change the value of working if bike is reported broken' do
    expect {bike.broken = true}.to change {bike.working?}
  end

end
