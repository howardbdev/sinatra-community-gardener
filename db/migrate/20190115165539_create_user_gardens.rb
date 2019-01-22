class CreateUserGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :user_gardens do |t|
      t.integer :user_id
      t.integer :garden_id
      t.timestamps null: false
    end
  end
end
