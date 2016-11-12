class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:id, :name)
  end

end
