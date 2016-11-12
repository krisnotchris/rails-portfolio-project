class RecipesController < ApplicationController
  def index
    
    @recipes = Recipe.all
  end

  def new
  end

  def create
  end
end
