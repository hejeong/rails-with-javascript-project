class User < ApplicationRecord
    has_many :going_responses
    has_many :events, through: :going_responses
    has_secure_password

    #validations
    #validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates_uniqueness_of :username
    validates_presence_of :name, allow_blank: false
    validates_presence_of :username, allow_blank: false
end
