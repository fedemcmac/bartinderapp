class Cocktail < ApplicationRecord
  belongs_to :user
  has_many :cocktail_ingredients, dependent: :destroy
  has_many :ingredients, through: :cocktail_ingredients
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :name, uniqueness: true
  validates :name, presence: true
  
  def self.most_popular
    Cocktail.all.sort_by {|cocktail| cocktail.likes.count}.reverse
  end

  def likers
    likes.map{|like| like.user_id}
  end
end
