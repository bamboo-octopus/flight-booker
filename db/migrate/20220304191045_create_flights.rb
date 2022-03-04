class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.datetime :flight_departure_time
      t.datetime :flight_duration

      t.timestamps
    end
  end
end
