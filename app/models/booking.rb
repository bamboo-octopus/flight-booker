class Booking < ApplicationRecord

    belongs_to :flight, class_name: "Flight", foreign_key: "flight_id"

    has_many :passenger_bookings

    has_many :passengers, through: :passenger_bookings

end
