class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.datetime :visit_date,   null: false
      t.boolean :kind_of_menu,  null: false
      t.string :menu_name,        null: false
      t.integer :soba_texture,  null: false, default: 50
      t.integer :soba_smell,    null: false, default: 50
      t.integer :soba_aldente,  null: false, default: 50
      t.integer :soup_salt,     null: false, default: 50
      t.integer :soup_taste,    null: false, default: 50
      t.text :memo

      t.timestamps
    end
  end
end
