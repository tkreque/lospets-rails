class AdjustTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :users
    drop_table :animals
    drop_table :pets
  
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.string :photo
      t.string :sex
      t.timestamps
    end
    create_table :socialMedias, :id => false do |t|
      t.string :socialMedia
      t.string :link
      t.belongs_to :user , index: true
      t.timestamps
    end
    create_table :telephones, :id => false  do |t|
      t.integer :area
      t.integer :number
      t.belongs_to :user , index: true
      t.timestamps
    end
    
    create_table :situations do |t|
      t.string :situation
      t.string :iconColor
      t.timestamps
    end
    
    create_table :animals do |t|
      t.string :animal
      t.string :iconDraw
      t.timestamps
    end
    create_table :races do |t|
      t.string :race
      t.belongs_to :animal , index: true
      t.timestamps
    end
    
    create_table :pets do |t|
      t.string :name, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.string :address
      t.string :photo
      t.string :sex
      t.belongs_to :race , index: true
      t.belongs_to :user , index: true
      t.belongs_to :situation , index: true
      
      t.timestamps
    end
    
     create_table :tags do |t|
      t.string :tag
      t.string :description
      t.timestamps
    end
    create_table :pet_tags, :id => false do |t|
      t.belongs_to :pet , index: true
      t.belongs_to :tag , index: true
      
    end
  end
end
