class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.float :latitude
      t.float :longitue
      t.string :address
      t.string :sex
      t.string :photo
      t.belongs_to :animal , index: true
      t.belongs_to :user , index: true

      t.timestamps
    end
  end
end
