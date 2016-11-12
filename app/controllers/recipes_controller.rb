class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.ingredients = params[:recipe][:ingredient_ids]

    if @recipe.save
      redirect_to recipe_recipe_ingredients_path(@recipe)
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
     params.require(:recipe).permit(:user_id, :name, :rating, :description, :ingredient_ids => [], :ingredients_attributes => [:name])
   end
end
