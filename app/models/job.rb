class Job < ApplicationRecord
    belongs_to :user, :optional => true
    has_many :applies
    geocoded_by :location
    after_validation :geocode

end
