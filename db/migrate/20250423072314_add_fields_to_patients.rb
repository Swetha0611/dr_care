class AddFieldsToPatients < ActiveRecord::Migration[8.0]
  def change
    add_column :patients, :patient_number, :string
    add_column :patients, :consultation_problem, :string
    add_column :patients, :consulting_fees, :decimal
  end
end
