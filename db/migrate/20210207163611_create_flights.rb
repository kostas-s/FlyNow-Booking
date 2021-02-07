class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.datetime :date
      t.timestamps
    end
  end
end
