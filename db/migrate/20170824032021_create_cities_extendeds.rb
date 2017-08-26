class CreateCitiesExtendeds < ActiveRecord::Migration[5.1]
  def change
    create_table :cities_extendeds do |t|
      t.string :city
      t.string :state_code
      t.integer :zip
      t.float :latitude
      t.float :longitude
      t.string :county

      t.timestamps
    end
    
  end
end
