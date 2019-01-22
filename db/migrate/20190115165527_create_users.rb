class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :slug
      t.string :email
      t.string :name
      t.string :location
      t.timestamps null: false
    end
  end
end
