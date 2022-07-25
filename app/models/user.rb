class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    has_many :jobs
    has_many :applications
    has_many :applies
end
