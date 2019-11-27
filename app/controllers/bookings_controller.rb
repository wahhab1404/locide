class BookingsController < ApplicationController
    before_action :is_owner, only: [:destroy] 
    def new
        @trip = Trip.find(params[:id])
        @user_id = params[:id]
        @booking = Booking.new
    end
    def create
        @trip = Trip.find(params[:booking][:trip_id])
        @booking = Booking.create(booking_params)
        @booking.save
        redirect_to homes_index_path
    end
    def destroy
        Booking.find(params[:id]).destroy
        redirect_to homes_index_path
    end
    def is_owner
        if current_user.id == Booking.find(params[:id]).user_id
            return true
        else
            redirect_to homes_index_path
        end
    end
    private
    def booking_params
        params.require(:booking).permit(:trip_id, :user_id)
    end
end