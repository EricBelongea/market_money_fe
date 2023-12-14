require "rails_helper"

RSpec.describe "Vendor Facade" do
  it "vendor_show", :vcr do
    vendor = VendorFacade.vendor_show("#{55823}")

    expect(vendor).to_not be_a(Hash)
    expect(vendor).to_not be_a(Array)

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
    
    expect(vendor).to respond_to(:description)
    expect(vendor.description).to be_a(String)
    expect(vendor.description).to eq("Vendor selling a variety of artisanal cured meats and sausages.")
  end
end