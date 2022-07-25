class Application < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :jobs, :optional => true 
end
