class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :address
      t.float :latitude
      t.float :longitude
      t.string :holiday
      t.integer :closed

      t.timestamps
    end
  end
end
