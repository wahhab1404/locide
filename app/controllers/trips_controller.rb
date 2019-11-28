class TripsController < ApplicationController
    before_action :is_owner, only: [:destroy, :edit] 
    def new
        @trip = current_user.trips.new
    end
    def create 
        @trip = current_user.trips.create(trips_params)
        @trip.save
        redirect_to "http://localhost:3000/trips/show?id=#{@trip.id}"
    end
    def show
        @trip = Trip.find(params[:id])
    end
    def edit
        @trip = Trip.find(params[:id])
    end
    def update
        @trip = Trip.find(params[:id])
        @trip.update(trips_params)
        redirect_to "http://localhost:3000/trips/show?id=#{@trip.id}"
    end
    def destroy
        Trip.find(params[:id]).destroy
        redirect_to "http://localhost:3000/"
    end
    def is_owner
        @trip = Trip.find(params[:id])
        if current_user.id == Trip.find(params[:id]).user_id
            return true
        else 

            redirect_to "http://localhost:3000/trips/show?id=#{@trip.id}", :alert => {:error => "You're not the owner"}
        end
    end
    private
    def trips_params
        params.require(:trip).permit(:name, :description, :trip_image, :places, :points_of_interest, :time, :duration, :city, :user_id)
    end
end
