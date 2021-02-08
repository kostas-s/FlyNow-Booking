class AddColumnToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, 'arrival_airport_id', :integer
    add_column :flights, 'departure_airport_id', :integer
  end
end
