class RecipeIngredientsController < ApplicationController
  def index
    
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredients = @recipe.ingredients
    @recipess = @recipe.recipe_ingredients
  end

end
