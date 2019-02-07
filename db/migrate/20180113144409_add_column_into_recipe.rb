class AddColumnIntoRecipe < ActiveRecord::Migration
  def change

    add_column :recipes , :about_recipe , :text
    add_column :recipes , :active , :boolean
  end
end
