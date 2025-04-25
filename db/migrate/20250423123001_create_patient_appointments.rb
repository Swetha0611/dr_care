class CreatePatientAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :patient_appointments do |t|
      t.string :name
      t.string :date
      t.integer :Time
      t.integer :age
      t.string :consulting_problem

      t.timestamps
    end
  end
end
