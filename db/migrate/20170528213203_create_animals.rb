class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :animal
      t.string :race
      t.string :iconDraw

      t.timestamps
    end
  end
end
