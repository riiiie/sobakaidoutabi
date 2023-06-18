class CreateSobaRaitoOfShops < ActiveRecord::Migration[7.0]
  def change
    create_table :soba_raito_of_shops do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :soba_raito, null: false, foreign_key: true

      t.timestamps
    end
    add_index :soba_raito_of_shops, [:shop_id, :soba_raito_id], unique: true
  end
end
