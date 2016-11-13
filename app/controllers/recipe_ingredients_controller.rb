class RecipeIngredientsController < ApplicationController

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredients = @recipe.recipe_ingredients
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredients = RecipeIngredient.find
    @ingredient_id = params["ingredient_id"]
  end

end
