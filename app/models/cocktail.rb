class Cocktail < ApplicationRecord
  belongs_to :user
  belongs_to :glass
  has_many :cocktail_ingredients, dependent: :destroy
  has_many :ingredients, through: :cocktail_ingredients
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :name, uniqueness: true
  validates :name, presence: true
<<<<<<< HEAD

  # def comments
  #   Comment.select{|comment| comment.cocktail_id == self.id}
  # end
=======
  
  def self.most_popular
    Cocktail.all.max_by(5){|cocktail| cocktail.likes.count}
  end
>>>>>>> 34a460f6e3ca266d9c012c80af1b373c7d20412c

  def self.most_comments
    Cocktail.all.max_by{|cocktail| cocktail.comments.count}
  end

  def likers
    likes.map{|like| like.user_id}
  end
end
