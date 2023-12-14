require "rails_helper"

RSpec.describe "Markets Index" do
  it "Index page should show all markets", :vcr do
    visit markets_path

    @markets = MarketFacade.all_markets
    @market = @markets.first

    expect(page).to have_content("All Markets")
    expect(page).to have_content(@market.name)
    expect(page).to have_content(@market.city)
    expect(page).to have_content(@market.state)

    expect(page).to have_link("More Info")

    first_more_info_link = page.all('a', text: 'More Info').first
    first_more_info_link.click

    expect(current_path).to eq(market_path(@market.id))
  end
end