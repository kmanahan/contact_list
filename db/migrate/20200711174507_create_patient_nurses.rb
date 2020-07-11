class CreatePatientNurses < ActiveRecord::Migration[6.0]
  def change
    create_table :patient_nurses do |t|
      t.integer :patient_id 
      t.integer :nurse_id
      t.timestamps
    end
  end
end
