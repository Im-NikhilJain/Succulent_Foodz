class CategoriesController < InheritedResources::Base


  def show
    nav_query
    @cat = Category.find(params[:id])

    @recipes = @cat.recipes.where(active: true).page(params[:page]).per(5)

    @categories = Category.all
  end

  private

  def category_params
    params.require(:category).permit(:category_name, :active)
  end
end

