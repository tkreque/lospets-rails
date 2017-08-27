class CreatePetTags < ActiveRecord::Migration[5.0]
  def change
    create_table :pet_tags do |t|
      t.integer :id_pet
      t.integer :id_tag

      end
  end
end
