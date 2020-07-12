class Patient < ApplicationRecord
    belongs_to :room 
    has_many :patient_nurses
    has_many :nurses, through: :patient_nurses
    has_many :doctor_patients
    has_many :doctors, through: :doctor_patients
end
