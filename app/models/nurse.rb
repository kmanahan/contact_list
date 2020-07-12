class Nurse < ApplicationRecord
    has_many :patien_tnurses
    has_many :patients, through: :patient_nurses
    has_many :nurse_rooms
    has_many :rooms, through: :nurse_rooms
end
