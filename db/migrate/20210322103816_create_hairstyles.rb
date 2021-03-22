class CreateHairstyles < ActiveRecord::Migration[6.1]
  def change
    create_table :hairstyles do |t|
      t.string :style
      t.integer :user_id
      t.string :image_url
      t.float :price
      t.string :salon_adress
      t.integer :duration
      t.integer :rating

      t.timestamps
    end
  end
end
