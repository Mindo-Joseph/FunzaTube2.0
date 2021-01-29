class BookingsController < ApplicationController
  def index
    bookings = Booking.all
    render json: bookings
  end

  def show
    booking = Booking.find(params[:id])
    render json: booking
  end

  def create
    booking_params = params.require(:booking).permit(:name, :date, :time, :email, :message)
    @booking = Booking.new(booking_params)
    @booking.save
  end
end
