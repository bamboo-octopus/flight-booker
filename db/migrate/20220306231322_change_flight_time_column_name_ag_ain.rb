class ChangeFlightTimeColumnNameAgAin < ActiveRecord::Migration[6.1]
  def change

    rename_column :flights, :flight_departure_time, :flight_departure_date

  end
end
