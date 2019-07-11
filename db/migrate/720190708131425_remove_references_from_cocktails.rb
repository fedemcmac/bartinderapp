class RemoveReferencesFromCocktails < ActiveRecord::Migration[5.1]
  def change
    remove_column :cocktails, :references

  end
end
