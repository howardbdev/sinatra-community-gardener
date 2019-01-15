class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :plant_type
      t.string :age
      t.string :growth_period
      t.string :species
      t.string :description
      t.string :harvest_time
      t.timestamps, null: false
    end
  end
end
