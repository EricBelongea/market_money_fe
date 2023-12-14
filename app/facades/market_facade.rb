class MarketFacade
  def self.all_markets
    json_response = MarketService.all_markets
    json_response[:data].map do |market|
      Market.new(market)
    end
  end

  def self.market_show(id)
    json_response = MarketService.market_show(id)
    Market.new(json_response[:data])
  end

  def self.market_vendors(id)
    json_response = MarketService.market_vendors(id)
    json_response[:data].map do |vendor|
      # require 'pry'; binding.pry
      Vendor.new(vendor)
    end
  end
end