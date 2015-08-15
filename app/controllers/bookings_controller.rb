class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    booking_params = params.require(:booking).permit(:first_name,:last_name, :official_event, :citta_nascita, :anno_nascita, :email)
    if (@booking = Booking.create(booking_params))
      @message = 'Registrato'
    else
      @message = 'Qualcosa è andato storto'
    end
  end

  def show
    booking_params = params.require(:booking).permit(:email)
    @booking = Booking.find_by_email booking_params.email
  end

  def search
    booking_params = params.require(:booking).permit(:email)
    @booking = Booking.find_by_email booking_params[:email]
    render :show
  end

  def index
    @booking = Booking.new
  end

end
