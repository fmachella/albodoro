class ChangeDefaultForBookingStatus < ActiveRecord::Migration
  def change
    change_column :bookings, :status, :integer, default: 0
  end
end
