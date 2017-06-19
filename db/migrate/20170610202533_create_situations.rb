class CreateSituations < ActiveRecord::Migration[5.0]
  def change
    create_table :situations do |t|
      t.string :situation
      t.string :iconColor

      t.timestamps
    end
    
  end
end
