class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true

    scope :find_by_specialty, -> (search_specialty)(where("specailty = ?", search_speaclty))
end
