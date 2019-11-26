class BookController < ApplicationController
    def new
        @trip = Trip.find(params[:trip])
        @book = current_user.bookings.new
    end
    def create
        @book = current_user.books.create(params.require(:book).permit(:id, :trip_id))
    end
end