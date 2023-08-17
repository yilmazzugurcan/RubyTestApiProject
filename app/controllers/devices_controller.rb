class DevicesController < ApplicationController
	  def create
    address = Address.create
    device = address.devices.create
    render json: device, status: :created
  end
end
