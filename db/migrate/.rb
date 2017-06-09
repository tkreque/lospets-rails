class AddSituationIdToPets < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :situations, :pets
  end
end
