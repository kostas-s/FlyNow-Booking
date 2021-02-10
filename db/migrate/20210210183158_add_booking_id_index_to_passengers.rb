class AddBookingIdIndexToPassengers < ActiveRecord::Migration[6.1]
  def change
    add_index :passengers, :booking_id
  end
end
