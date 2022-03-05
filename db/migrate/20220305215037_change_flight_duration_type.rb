class ChangeFlightDurationType < ActiveRecord::Migration[6.1]
  def change

    add_column :flights, :duration, :integer
    remove_column :flights, :flight_duration

  end
end
