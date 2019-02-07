class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name , null: false
      t.boolean :active , null: false

      t.timestamps null: false
    end
  end
end
