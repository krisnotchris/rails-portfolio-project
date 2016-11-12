class IngredientsController < ApplicationController
  def index
  end

  def show
    @ingredients = Ingredient.all
  end
  
end
