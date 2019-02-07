class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  helper_method :nav_query

  def nav_query

    @recipe_active = Recipe.order('RANDOM()').where(active: true).first
    @recipe_random_two = Recipe.order('RANDOM()').where(active: true).limit(2)
    @category_nav =  Category.where(active: true)

  end
end
