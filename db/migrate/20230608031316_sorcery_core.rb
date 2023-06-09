class SorceryCore < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name,             null: false
      t.string :email,            null: false, index: { unique: true }
      t.integer :role,            null: false, default: 0
      t.string :crypted_password
      t.string :salt
      t.string :introduction
      t.text :link

      t.timestamps                null: false
    end
  end
end
