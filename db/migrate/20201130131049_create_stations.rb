class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :station
      t.integer :by_walk
      t.references :apartment, foreign_key: true
      t.timestamps
    end
  end
end
