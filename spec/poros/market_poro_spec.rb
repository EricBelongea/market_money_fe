require "rails_helper"

RSpec.describe "Market Poro" do
  it "Create Market objects successfully" do
    attrs = {
      id: "123456",
      attributes: {
        name: "Test",
        city: "SLC", 
        state: "UT",
        street: "State st",
        zip: "98012"
      }
    }

    market = Market.new(attrs)

    expect(market).to respond_to(:id)
    expect(market.id).to be_a(String)
    expect(market.id).to eq("123456")
    
    expect(market).to respond_to(:name)
    expect(market.name).to be_a(String)
    expect(market.name).to eq("Test")
    
    expect(market).to respond_to(:city)
    expect(market.city).to be_a(String)
    expect(market.city).to eq("SLC")
    
    expect(market).to respond_to(:state)
    expect(market.state).to be_a(String)
    expect(market.state).to eq("UT")
    
    expect(market).to respond_to(:street)
    expect(market.street).to be_a(String)
    expect(market.street).to eq("State st")
    
    expect(market).to respond_to(:zip)
    expect(market.zip).to be_a(String)
    expect(market.zip).to eq("98012")
  end
end