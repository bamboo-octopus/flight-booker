class RenameDurationColumnToFlightDuration < ActiveRecord::Migration[6.1]
  def change

    rename_column :flights, :duration, :flight_duration

  end
end
