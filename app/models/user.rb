class User < ApplicationRecord
    #un usuario tiene muchos eventos a traves de userevents
    has_many :event_users
    has_many :events, :through => :event_users

    #para validar los valores:
    validates :email, presence: true , uniqueness: true
    validates :name, presence: true
    validates :age, presence: true

    #para cambiar la primary key
    #self.primary_key = "email"
end
