class MarketsController < ApplicationController
  def index 
    @markets = MarketFacade.all_markets
  end

  def show
    @market = MarketFacade.market_show(params[:id])
    @vendors = MarketFacade.market_vendors(params[:id])
    # require 'pry'; binding.pry
  end
end