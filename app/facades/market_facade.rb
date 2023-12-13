class MarketFacade
  def self.all_markets
    json_response = MarketService.all_markets
    json_response[:data].map do |market|
      # require 'pry'; binding.pry
      Market.new(market)
    end
  end
end