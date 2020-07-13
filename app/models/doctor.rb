class Doctor < ApplicationRecord
    has_many :doctor_patients
    has_many :patients, through: :doctor_patients 
    has_many :doctors, through: :doctor_rooms

    scope :surgeon, -> { where(speciality: surgeon) }
    scope :pediatrics, -> { where(speciality: pediatrics) }

end
