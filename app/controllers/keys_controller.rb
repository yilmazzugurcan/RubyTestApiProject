class KeysController < ApplicationController
  before_action :find_device

  def create
    key = @device.keys.new(key_params)
    if key.save
      @device.address.keys.create(key_params)
      render json: key, status: :created
    else
      render json: { error: key.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  private

  def find_device
    @device = Device.find(params[:device_id])
  end

  def key_params
    params.require(:key).permit(:key)
  end
    def index
    keys = @device.keys
    render json: keys
  end
end
