class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_number 
      t.string :phone_number
      t.timestamps
    end
  end
end
