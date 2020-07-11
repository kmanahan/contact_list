class Room < ApplicationRecord
    has_many :patients
    has_many :nurse_rooms
    has_many :nurses, through: :nurse_rooms
    has_many :doctor_rooms
    has_many :doctors, through: :doctor_rooms 
    validates_presence_of :room_number
    validates_presence_of :phone_number
end
