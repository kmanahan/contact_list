class NurseRoom < ApplicationRecord
    belongs_to :nurse
    belongs_to :room
end
