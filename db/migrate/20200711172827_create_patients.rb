class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name 
      t.string :last_name 
      t.integer :room_id
      t.string :diagnosis 
      t.string :status 
      t.boolean :discharged
      t.boolean :expired
      t.timestamps
    end
  end
end
