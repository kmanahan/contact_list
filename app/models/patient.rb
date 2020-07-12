class Patient < ApplicationRecord
    belongs_to :room 
    has_many :patient_nurses
    has_many :nurses, through: :patient_nurses
    has_many :doctor_patients
    has_many :doctors, through: :doctor_patients
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :discharged
    validates_presence_of :expired

    scope :discharged, -> { where(discharged: true) }
    scope :expired, -> { where(expired: true )}
    
    def full_name
        self.first_name + " " + self.last_name
     end 
end
