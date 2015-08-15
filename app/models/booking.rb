class Booking < ActiveRecord::Base
  enum status: { :pending => 0, :accepted => 1 }
  validates_presence_of :official_event, :first_name, :last_name
  validates_uniqueness_of :email
end
