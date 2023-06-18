class CreateSobaRaitoOfRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :soba_raito_of_records do |t|
      t.references :record, null: false, foreign_key: true
      t.references :soba_raito, null: false, foreign_key: true

      t.timestamps
    end
    add_index :soba_raito_of_records, [:record_id, :soba_raito_id], unique: true
  end
end
