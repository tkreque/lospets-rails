class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :pets, :longitue, :longitude
  end
end
