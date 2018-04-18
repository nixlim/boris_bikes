require 'bike'
describe Bike do
  it "should respond to working? method" do
    expect(Bike.new).to respond_to(:working?)
  end 
end
