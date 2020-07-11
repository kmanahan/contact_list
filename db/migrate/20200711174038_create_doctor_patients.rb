class CreateDoctorPatients < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_patients do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.timestamps
    end
  end
end
