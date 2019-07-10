class User < ApplicationRecord
    has_many :cocktails, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_secure_password
    validates :name, uniqueness: true
    validates :email, uniqueness: true
    
    def connected
        connections = []
        
    end
end
