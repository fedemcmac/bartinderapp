class AddColumnToGlasses < ActiveRecord::Migration[5.1]
  def change
    add_column :glasses, :name, :string
    add_column :glasses, :url, :string
  end
end
