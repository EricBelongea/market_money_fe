class VendorFacade
  def self.vendor_show(id)
    json_response = VendorService.vendor_show(id)
    Vendor.new(json_response[:data])
  end
end