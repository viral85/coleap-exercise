class Api::V1::VehiclesController < ApplicationController
  def index
    if params[:sort].present? && ['ASC','DESC'].include?(params[:sort])
      sort = params[:sort]
    end
    @vehicles = Vehicle.includes(:vehicle_maker, :vehicle_colors).joins(:vehicle_maker)
    if params[:make].present?
      @vehicles = @vehicles.where("vehicle_makers.name ilike ?", params[:make])
    end

    if sort
      @vehicles = @vehicles.order(price: params[:sort])
    else
      @vehicles.all
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end
end
