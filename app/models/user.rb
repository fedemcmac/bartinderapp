class User < ApplicationRecord
    has_many :cocktails, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_secure_password
    validates :name, uniqueness: true
    validates :email, uniqueness: true
    
    def self.most_cocktails
        User.all.max_by{|user| user.cocktails.count}
    end

    def self.most_likes_given
        User.all.max_by{|user| user.likes.count}
    end

    def self.most_chatty
        User.all.max_by{|user| user.comments.count}
    end

    def liked
        self.cocktails.sum{|cocktail| cocktail.likes.count}
    end

    def commented
        self.cocktails.sum{|cocktail| cocktail.comments.count}
    end

    def self.most_liked
        User.all.max_by{|user| user.liked}
    end

    def self.most_commented
        User.all.max_by{|user| user.commented}
    end
end
