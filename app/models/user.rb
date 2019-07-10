class User < ApplicationRecord
    has_many :cocktails
    has_many :comments
    has_many :likes
    has_secure_password
    validates :name, uniqueness: true
    validates :email, uniqueness: true
    
    
end
