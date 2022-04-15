class Api::V1::VehiclesController < ApplicationController
  def index
    if params[:sort].present? && ['ASC','DESC'].include?(params[:sort])
      sort = params[:sort]
    end

    if sort
      @vehicles = Vehicle.includes(:vehicle_maker, :vehicle_colors).order(price: params[:sort])
    else
      @vehicles = Vehicle.includes(:vehicle_maker, :vehicle_colors).all
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end
end
