class Category < ActiveRecord::Base


  has_many :dishes
  has_many :recipes, through: :dishes

  def name
    return self.category_name
  end


end
