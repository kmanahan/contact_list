class DoctorRoom < ApplicationRecord
    belongs_to :doctor
    belongs_to :room
end
