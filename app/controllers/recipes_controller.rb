class RecipesController < InheritedResources::Base


  def index
    nav_query
    @categories = Category.where(active: true)
    @recipes = Recipe.where(active: true).page(params[:page]).per(5)
  end

  def show
    nav_query
    @recipe = Recipe.find(params[:id])

    @comment = Comment.new

    @categories = Category.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :Prep_time, :cook_time, :servings, :ingredients, :instruc, :youtube,:image_1 ,:image_2 , :image_3 , :image_4 , :image_5  )
  end

end

