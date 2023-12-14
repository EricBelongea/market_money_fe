class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.vendor_show(params[:id])
  end
end