class RecipesController < ApplicationController
  def index
    @user = current_user
    @recipes = Recipe.all
  end

  def new
  end

  def create
  end
end
