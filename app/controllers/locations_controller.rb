class LocationsController < ApplicationController
  before_action :set_trip, only: [:index, :new, :create]
  before_action :set_trip1, only: [:show, :edit, :update, :destroy]
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = @trip.locations.all
  end

  def show
  end

  def new
    @location = @trip.locations.new
  end

  def edit
  end

  def create
    @location = @trip.locations.new(location_params)
    if @location.save
      redirect_to 
    else
      render :new
    end
  end

  def update
    if @location.update(location_params)
      redirect_to [@trip, @location]
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to trip_locations_path(@trip)
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def set_trip1
    @trip1 = Trip.find(params[:id])
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :attraction, :rating, :note)
  end
end
