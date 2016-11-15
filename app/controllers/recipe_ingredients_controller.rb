class RecipeIngredientsController < ApplicationController

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_id = params[:recipe_id].to_i
    @recipe_ingredients = RecipeIngredient.where(recipe_id: @recipe_id)
  end

  def create
    redirect_to recipe_recipe_ingredients_path
  end

  def update
    @recipe_ingredients = RecipeIngredient.find_by(recipe_id: params[:recipe_id])
    @recipe_ingredients.update(recipe_ingredients_params)
    @recipe = Recipe.find(params[:recipe_id])
    redirect_to recipe_path(@recipe.id)
  end

  def edit
    @recipe_ingredient = RecipeIngredient.where(ingredient_id: params[:id])
  end

  private

  def recipe_ingredients_params
    params.permit(:quantity)
  end

end
