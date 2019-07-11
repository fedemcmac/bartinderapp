class RemoveGlassFromCocktails < ActiveRecord::Migration[5.1]
  def change
      rename_column :cocktails, :glass, :references
  end
end
