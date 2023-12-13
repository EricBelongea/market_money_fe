class Market
  attr_reader :name, :city, :state

  def initialize(data)
    @name = data[:attributes][:name]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
  end
  
end