class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.string :acronym
      t.string :name
      t.string :location
      t.timestamps
    end
  end
end
