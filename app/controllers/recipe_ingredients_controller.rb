class RecipeIngredientsController < ApplicationController
  before_action :auth_user
  def index
    recipe_finder
    @recipe_id = params[:recipe_id].to_i
    @recipe_ingredients = RecipeIngredient.where(recipe_id: @recipe_id)
  end

  def update
    recipe_finder
    @recipe_ingredients = @recipe.recipe_ingredients
    @ing = @recipe_ingredients.find_by(ingredient_id: params[:id])
    @ing.update(recipe_ingredients_params)

    redirect_to recipe_path(@recipe.id)
  end

  def edit
    recipe_finder
    @recipe_ingredient = @recipe.recipe_ingredients
    @ing = @recipe_ingredient.find_by(ingredient_id: params[:id])
  end

  private

  def recipe_finder
    @recipe = Recipe.find(params[:recipe_id])
  end

  def recipe_ingredients_params
    params.permit(:quantity)
  end

end
