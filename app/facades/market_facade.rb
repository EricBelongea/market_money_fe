class MarketFacade
  def self.all_markets
    json_response = MarketService.all_markets
    require 'pry'; binding.pry
    json_response[:data].map do |market|
      require 'pry'; binding.pry
      Market.new(market)
    end
  end
end