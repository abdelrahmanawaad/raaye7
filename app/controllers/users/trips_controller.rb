class Users::TripsController < ApplicationController
    before_action :set_trip , only: [:show , :destroy]
    def new
      @trip = Trip.new
    end

    def index
        @trips = Trips.all
    end
    def create
      @trip = Trip.new(trip_params)
      @trip.user = current_user
      if @trip.save
        flash[:notice] = "trip was successfully created"
        redirect_to  users_trips_path (@trip)
      else
        render 'new'
      end
    end
    def show


    end
    def destroy
      @trip.destroy
      redirect_to users_trips_path
    end
    private
      def set_trip
     @trip = Trip.find(params[:id])
    end
   def trip_params
      params.require(:trip).permit(:number_of_seats,:departure_time,:source,:destination)
   end
end
