class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :flight, foreign_key: true
      t.references :passenger, foreign_key: true
      t.timestamps
    end
  end
end
