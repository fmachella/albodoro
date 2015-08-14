class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :official_event

      t.timestamps null: false
    end
  end
end
