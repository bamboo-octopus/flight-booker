class ChangeFlightDepartureTimeToFlightDepartureDate < ActiveRecord::Migration[6.1]
  def change

    change_column :flights, :flight_departure_time, :flight_departure_date

  end
end
