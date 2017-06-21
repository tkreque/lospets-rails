class CreateTableRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :race
      t.belongs_to :animal , index: true
      t.timestamps
    end
  end
end
