class Event < ApplicationRecord
    has_many :eventTypes
    has_many :event_users
    has_many :users, :through => :event_users

    #Validates
    validates :nameEvent, :place, presence: true
end
