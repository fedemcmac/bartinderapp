class CreateCocktailIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktail_ingredients do |t|
      t.references :cocktail, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
