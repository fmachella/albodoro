class Booking < ActiveRecord::Base
  validates_presence_of :official_event, :first_name, :last_name
end
