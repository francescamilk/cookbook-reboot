class AddDoneToRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :done, :boolean, default: false
  end
end