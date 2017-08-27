class AdjustPetTagTable < ActiveRecord::Migration[5.0]
  def change
    add_column :pet_tags, :id_pet, :integer
    add_column :pet_tags, :id_tag, :integer
    remove_column :pet_tags, :pet_id, :integer
    remove_column :pet_tags, :tag_id, :integer
  end
end
