require "rails_helper"

RSpec.describe "Vendor PORO" do
  it "Creates a Vendor" do
    attrs = { 
      id: "123456",
      attributes: {
        name: "Test",
        description: "It's a test",
        contact_name: "Me",
        contact_phone: "In your hand",
        credit_accepted: true
      }
    }

    vendor = Vendor.new(attrs)

    expect(vendor).to respond_to(:id)
    expect(vendor.id).to be_a(String)
    expect(vendor.id).to eq("123456")
    
    expect(vendor).to respond_to(:name)
    expect(vendor.name).to be_a(String)
    expect(vendor.name).to eq("Test")
    
    expect(vendor).to respond_to(:contact_name)
    expect(vendor.contact_name).to be_a(String)
    expect(vendor.contact_name).to eq("Me")
    
    expect(vendor).to respond_to(:contact_phone)
    expect(vendor.contact_phone).to be_a(String)
    expect(vendor.contact_phone).to eq("In your hand")
    
    expect(vendor).to respond_to(:credit_accepted)
    expect(vendor.credit_accepted).to be_a(TrueClass)
    
    expect(vendor).to respond_to(:description)
    expect(vendor.description).to be_a(String)
    expect(vendor.description).to eq("It's a test")
  end
end