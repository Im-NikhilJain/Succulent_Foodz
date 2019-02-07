class ChangeColumnOfRecipes < ActiveRecord::Migration
  def change

    change_column :recipes , :about_recipe , :text , null: false
  end
end
