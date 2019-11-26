class BookingController < ApplicationController
    def new
        @trip = Trip.find(params[:id])
        @user_id = params[:id]
        @booking = @trip.bookings.new
    end
    def create
        @booking = current_user.bookings.create(params.require(:booking).permit(:user_id, :trip_id))
        
    end
end