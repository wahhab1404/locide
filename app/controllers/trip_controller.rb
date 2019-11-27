class TripController < ApplicationController
    def new
        @trip = current_user.trips.new
    end
    def create 
        @trip = current_user.trips.create(trips_params)
        @trip.save
        redirect_to home_indexguest_path
    end
    def show
        @trip = Trip.find(params[:id])
    end
    private
    def trips_params
        params.require(:trip).permit(:name, :description, :trip_image, :places, :points_of_interest, :time, :duration, :city, :user_id)
    end
end
