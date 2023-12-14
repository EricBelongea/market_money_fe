require "rails_helper"

RSpec.describe "Vendor Show" do
  it "Vendor info", :vcr do
    visit vendor_path("#{55823}")

    @vendor = VendorFacade.vendor_show(55823)

    expect(page).to have_content("#{@vendor.name}")
    expect(page).to have_content("#{@vendor.description}")

    expect(page).to have_content("Contact Info:")

    expect(page).to have_content("Name: #{@vendor.contact_name}")
    expect(page).to have_content("Phone: #{@vendor.contact_phone}")
    expect(page).to have_content("Credit Accepted?: #{@vendor.credit_accepted}")

    expect("#{@vendor.contact_name}").to appear_before("#{@vendor.contact_phone}")
    expect("#{@vendor.contact_phone}").to appear_before("#{@vendor.credit_accepted}")
  end
end