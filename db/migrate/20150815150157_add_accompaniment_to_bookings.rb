class AddAccompanimentToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :accompaniment, :boolean
  end
end
