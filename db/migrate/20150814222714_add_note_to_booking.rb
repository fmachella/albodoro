class AddNoteToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :citta_nascita, :string
    add_column :bookings, :anno_nascita, :date
  end
end
