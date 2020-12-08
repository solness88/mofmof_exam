class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :name
      t.integer	:rent
      t.text :address
      t.integer :age
      t.text :memo
      t.string :train_line
      t.string :station
      t.integer :on_foot
      t.string :train_line2
      t.string :station2
      t.integer :on_foot2
    end
  end
end
