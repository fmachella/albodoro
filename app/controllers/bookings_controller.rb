class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    booking_params = params.require(:booking).permit(:first_name,:last_name)
    if (@booking = Booking.create(booking_params))
      @message = 'Registrato'
    else
      @message = 'Qualcosa è andato storto'
    end
  end

end
