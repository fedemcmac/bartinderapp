class User < ApplicationRecord
    has_many :cocktails
    has_many :comments
    has_many :likes
    has_secure_password
end
