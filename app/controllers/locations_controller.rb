class LocationsController < ApplicationController
  before_action :set_trip
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = @trip.locations.all
  end

  def show
  end

  def new
    @location = @trip.locations.new
    binding.pry
  end

  def edit
  end

  def create
    binding.pry
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
    redirect_to trip_locations_path
  end

  private

  def set_trip
    binding.pry
    @trip = Trip.find(params[:trip_id])
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :attraction, :rating, :note)
  end
end
