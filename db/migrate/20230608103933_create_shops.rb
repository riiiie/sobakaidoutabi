class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name,     null: false
      t.text :address,    null: false
      t.string :holiday
      t.integer :closed,  null: false, default: 0

      t.timestamps
    end
  end
end
