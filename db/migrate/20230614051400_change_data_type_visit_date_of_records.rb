class ChangeDataTypeVisitDateOfRecords < ActiveRecord::Migration[7.0]
  def change
    change_column :records, :visit_date, :date
  end
end
