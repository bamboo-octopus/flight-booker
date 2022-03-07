class AddFlightDepartureTimeToFlightTable < ActiveRecord::Migration[6.1]
  def change

    change_column :flights, :flight_departure_time, :flight_departure_time
    add_column :flights, :departure_time, :string

  end
end
