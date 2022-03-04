class AddCityStateToAirportTable < ActiveRecord::Migration[6.1]
  def change

    add_column :airports, :city_state, :string

  end
end
