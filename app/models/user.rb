class User < ApplicationRecord
    has_many :cocktails
    has_many :comments
    has_many :likes
    has_secure_password
    validates :name, uniqueness: true
    validates :email, uniqueness: true
    def comments
        Comment.select{|comment| comment.user_id == self.id}
      end
    
      def likes
        Like.select{|like| like.user_id == self.id}
      end
    
end
