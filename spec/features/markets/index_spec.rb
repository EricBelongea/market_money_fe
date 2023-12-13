require "rails_helper"

RSpec.describe "Markets Index" do
  before(:each) do

  end

  it "Index page should show all markets" do
    visit markets_path

    expect(page).to have_content("All Markets")
    
  end
end