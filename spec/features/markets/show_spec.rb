require "rails_helper"

RSpec.describe "Market Show" do
  it "Show Market info and their Vendors", :vcr do
    visit market_path("#{322458}")

    @markets = MarketFacade.all_markets
    @market = @markets.first
    @vendors = MarketFacade.market_vendors(@market.id)
    @vendor = @vendors.first

    within("div#market") do
      expect(page).to have_content("#{@market.name}")
      expect(page).to have_content("1400 U Street NW")
      expect(page).to have_content("#{@market.city}, #{@market.state} #{@market.zip}")
    end

    expect(page).to have_content("Vendors at our Market:")
    expect(page).to have_link("#{@vendor.name}")

    click_link("#{@vendor.name}")
    expect(current_path).to eq(vendor_path(@vendor.id))
  end

  it "Can show multiple vendors of Market show", :vcr do
    visit market_path("#{322474}")

    @markets = MarketFacade.all_markets
    @market = @markets[1]
    @vendors = MarketFacade.market_vendors(@market.id)

    within("div#market") do
      expect(page).to have_content("#{@market.name}")
      expect(page).to have_content("#{@market.street}")
      expect(page).to have_content("#{@market.city}, #{@market.state} #{@market.zip}")
    end

    expect(page).to have_content("Vendors at our Market:")

    @vendors.each do |vendor|
      expect(page).to have_link("#{vendor.name}")
    end
  end
end