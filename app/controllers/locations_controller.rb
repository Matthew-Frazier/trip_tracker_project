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
    redirect_to trip_locations_path
  end

  private

  def set_trip
<<<<<<< HEAD
    @trip = Trip.find(params[:id])
=======
    @trip = Trip.find(params[:trip_id])
  end

  def set_trip1
    @trip1 = Trip.find(params[:id])
>>>>>>> 40cdfb7679a5a8b15fccd23facf04c0cc617fa79
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :attraction, :rating, :note)
  end
end
