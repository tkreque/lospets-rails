class DropColumnRaceAnimals < ActiveRecord::Migration[5.0]
  def change
    remove_column :animals, :race, :string
  end
end
