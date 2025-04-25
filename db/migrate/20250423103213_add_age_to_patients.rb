class AddAgeToPatients < ActiveRecord::Migration[8.0]
  def change
    add_column :patients, :age, :integer
  end
end
