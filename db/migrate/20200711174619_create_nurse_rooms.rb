class CreateNurseRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :nurse_rooms do |t|
      t.integer :room_id
      t.integer :nurse_id
      t.timestamps
    end
  end
end
