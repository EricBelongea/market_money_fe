class MarketService
  def self.conn
    Faraday.new(url: "http://localhost:3000/")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.all_markets
    get_url("api/v0/markets")
  end

  def self.market_show(id)
    get_url("api/v0/markets/#{id}")
  end

  def self.market_vendors(id)
    get_url("api/v0/markets/#{id}/vendors")
  end
end