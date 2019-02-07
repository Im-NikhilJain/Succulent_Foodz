class AddAttachmentImage1Image2Image3Image4Image5ToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.attachment :image_1
      t.attachment :image_2
      t.attachment :image_3
      t.attachment :image_4
      t.attachment :image_5
    end
  end

  def self.down
    remove_attachment :recipes, :image_1
    remove_attachment :recipes, :image_2
    remove_attachment :recipes, :image_3
    remove_attachment :recipes, :image_4
    remove_attachment :recipes, :image_5
  end
end
