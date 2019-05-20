class Event < ApplicationRecord
    has_many :going_responses
    has_many :users, through: :going_responses
end
