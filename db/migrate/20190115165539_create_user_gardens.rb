class CreateUserGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :user_gardens do |t|
      t.string :slug
      t.string :email
      t.string :name
      t.string :location
      t.timestamps, null: false
    end
  end
end
