class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name , null: false
      t.string :Prep_time , null: false
      t.string :cook_time , null: false
      t.string :servings , null: false
      t.text :ingredients , null: false
      t.text :instruc , null: false
      t.string :youtube , null: false

      t.timestamps null: false
    end
  end
end
