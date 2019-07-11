class AddReference < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :glass, :string
  end
end
