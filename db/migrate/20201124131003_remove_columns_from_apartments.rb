class RemoveColumnsFromApartments < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :train_line, :string
    remove_column :apartments, :station, :string
    remove_column :apartments, :on_foot, :integer
    remove_column :apartments, :train_line2, :string
    remove_column :apartments, :station2, :string
    remove_column :apartments, :on_foot2, :integer
  end
end
