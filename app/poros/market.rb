class Market
  attr_reader :name, :city, :state, :street, :county, :zip, :lat, :lon, :vendor_count, :type

  def initialize(data)
    @name = data[:attributes][:name]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
    @street = data[:attributes][:street]
    @county = data[:attributes][:county]
    @zip = data[:attributes][:zip]
    @lat = data[:attributes][:lat]
    @lon = data[:attributes][:lon]
    @vendor_count = data[:attributes][:vendor_count]
  end
end