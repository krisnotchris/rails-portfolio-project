class RecipeIngredientsController < ApplicationController

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_id = params[:recipe_id].to_i
    @recipe_ingredients = RecipeIngredient.where(recipe_id: @recipe_id)
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient_id = params["ingredient_id"]
  end

  def create
    redirect_to recipe_recipe_ingredients_path
  end

  def update
    redirect_to recipe_recipe_ingredients_path
  end

end
