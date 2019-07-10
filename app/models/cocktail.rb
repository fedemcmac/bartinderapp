class Cocktail < ApplicationRecord
  belongs_to :user
  belongs_to :glass
  has_many :cocktail_ingredients, dependent: :destroy
  has_many :ingredients, through: :cocktail_ingredients
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :name, uniqueness: true
  validates :name, presence: true

  # def comments
  #   Comment.select{|comment| comment.cocktail_id == self.id}
  # end

  # def likes
  #   Like.select{|like| like.cocktail_id == self.id}
  # end

  def likers
    likes.map{|like| like.user_id}
  end
end
