class User < ApplicationRecord
    has_secure_password

    #validations
    #validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates_uniqueness_of :username
    validates_presence_of :name, allow_blank: false
    validates_presence_of :username, allow_blank: false
end
