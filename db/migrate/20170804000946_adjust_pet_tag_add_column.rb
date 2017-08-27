class AdjustPetTagAddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :pet_tags, :id, :primary_key
  end
end
