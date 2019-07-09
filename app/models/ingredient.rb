class Ingredient < ApplicationRecord
  belongs_to :type
  has_many :cocktail_ingredients
  has_many :cocktails, through: :cocktail_ingredients
end
