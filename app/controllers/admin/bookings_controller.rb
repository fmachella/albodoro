class Admin::BookingsController < ApplicationController
  def edit
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all.order(:updated_at)
  end

  def accept
    booking = Booking.find(params[:booking_id])
    booking.accepted!
    if booking.save!
      message = "#{booking.first_name} #{booking.last_name} accettato"
    else
      message = "#{booking.first_name} #{booking.last_name} non accettato"
    end
    redirect_to action: 'index', message: message
  end

end