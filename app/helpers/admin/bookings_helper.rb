module Admin::BookingsHelper
  def status(booking)
    if booking.status == 'pending'
      'In attesa'
    elsif booking.status == 'accepted'
      'Accettato'
    else
      'Sconosciuto/Non Valido'
    end
  end
end
