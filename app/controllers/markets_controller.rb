class MarketsController < ApplicationController
  def index 
    @markets = MarketFacade.all_markets
    require 'pry'; binding.pry
  end
end