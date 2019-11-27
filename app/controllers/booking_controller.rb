class BookingController < ApplicationController
    def new
        @trip = Trip.find(params[:id])
        @user_id = params[:id]
        @booking = @trip.bookings.new
    end
    def create
        @trip = Trip.find(params[:booking][:trip_id])
        @booking = @trip.bookings.create(params.require(:booking).permit(:id, :user_id))
        redirect_to home_index_path
    end
end