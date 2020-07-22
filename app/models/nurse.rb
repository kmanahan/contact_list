class Nurse < ApplicationRecord
    has_many :patient_nurses
    has_many :patients, through: :patient_nurses
    has_many :nurse_rooms
    has_many :rooms, through: :nurse_rooms
   

end
