class ChangeFlightDurationColumnType < ActiveRecord::Migration[6.1]
  def change

    change_column :flights, :flight_departure_date, :datetime

  end
end
