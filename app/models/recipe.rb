class Recipe < ActiveRecord::Base

  has_many :dishes
  has_many :categories, through: :dishes


  has_many :comments


  has_attached_file :image_1, styles: { medium: "530x353>", thumb: "253x120#" }
  has_attached_file :image_2, styles: { medium: "530x353>", thumb: "253x120#"  }
  has_attached_file :image_3, styles: { medium: "530x353>", thumb: "253x120#"}
  has_attached_file :image_4, styles: { medium: "530x353>", thumb: "253x120#" }
  has_attached_file :image_5, styles: { medium: "530x353>", thumb: "253x120#" }


  validates_attachment_content_type :image_1, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image_2, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image_3, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image_4, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image_5, content_type: /\Aimage\/.*\z/


  def name
    return self.recipe_name
  end


end
