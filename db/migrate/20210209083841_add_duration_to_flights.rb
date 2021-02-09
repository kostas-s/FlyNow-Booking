class AddDurationToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :duration, :float
  end
end
