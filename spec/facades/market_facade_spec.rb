require "rails_helper"

RSpec.describe "Market Facade" do
  it "all_markets", :vcr do
    results = MarketFacade.all_markets

    expect(results).to_not be_a(Hash)
    expect(results).to be_a(Array)

    market1 = results.first

    expect(market1).to respond_to(:id)
    expect(market1.id).to be_a(String)

    expect(market1).to respond_to(:name)
    expect(market1.name).to be_a(String)
    
    expect(market1).to respond_to(:city)
    expect(market1.city).to be_a(String)

    expect(market1).to respond_to(:state)
    expect(market1.state).to be_a(String)
    
    expect(market1).to respond_to(:street)
    expect(market1.street).to be_a(String)
    
    expect(market1).to respond_to(:zip)
    expect(market1.zip).to be_a(String)
  end

  it "market_show(id)", :vcr do
    result = MarketFacade.market_show("#{322458}")

    # require 'pry'; binding.pry
    expect(result).to_not be_a(Hash)
    expect(result).to_not be_a(Array)

    # market1 = results.first
    expect(result).to respond_to(:id)
    expect(result.id).to be_a(String)
    expect(result.id).to eq("322458")
    
    expect(result).to respond_to(:name)
    expect(result.name).to be_a(String)
    expect(result.name).to eq("14&U Farmers' Market")
    
    expect(result).to respond_to(:city)
    expect(result.city).to be_a(String)
    expect(result.city).to eq("Washington")
    
    expect(result).to respond_to(:state)
    expect(result.state).to be_a(String)
    expect(result.state).to eq("District of Columbia")
    
    expect(result).to respond_to(:street)
    expect(result.street).to be_a(String)
    expect(result.street).to eq("1400 U Street NW ")
    
    expect(result).to respond_to(:zip)
    expect(result.zip).to be_a(String)
    expect(result.zip).to eq("20009")
  end

  it "market_vendors()", :vcr do
    results = MarketFacade.market_vendors("#{322458}")

    expect(results).to_not be_a(Hash)
    expect(results).to be_a(Array)

    vendor = results.first

    expect(vendor).to respond_to(:id)
    expect(vendor.id).to be_a(String)
    expect(vendor.id).to eq("55823")
    
    expect(vendor).to respond_to(:name)
    expect(vendor.name).to be_a(String)
    expect(vendor.name).to eq("The Charcuterie Corner")
    
    expect(vendor).to respond_to(:contact_name)
    expect(vendor.contact_name).to be_a(String)
    expect(vendor.contact_name).to eq("Claudie Langworth III")
    
    expect(vendor).to respond_to(:contact_phone)
    expect(vendor.contact_phone).to be_a(String)
    expect(vendor.contact_phone).to eq("1-147-179-9747")
    
    expect(vendor).to respond_to(:credit_accepted)
    expect(vendor.credit_accepted).to be_a(FalseClass)
    # expect(vendor.credit_accepted).to eq("1400 U Street NW ")
    
    expect(vendor).to respond_to(:description)
    expect(vendor.description).to be_a(String)
    expect(vendor.description).to eq("Vendor selling a variety of artisanal cured meats and sausages.")
  end
end