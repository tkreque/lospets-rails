class AlterPetsChangeColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :pets, :animal_id, :integer
    remove_column :pets, :longitue, :float
    add_column :pets, :longitude, :float
    add_column :pets, :race_id, :integer
    add_column :pets, :situation_id, :integer
  end
end
