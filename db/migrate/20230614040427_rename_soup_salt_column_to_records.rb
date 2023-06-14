class RenameSoupSaltColumnToRecords < ActiveRecord::Migration[7.0]
  def change
    rename_column :records, :soup_salt, :soup_saltiness
  end
end
