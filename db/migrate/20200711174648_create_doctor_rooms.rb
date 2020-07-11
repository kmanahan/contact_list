class CreateDoctorRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_rooms do |t|
      t.integer :doctor_id 
      t.integer :room_id
      t.timestamps
    end
  end
end
