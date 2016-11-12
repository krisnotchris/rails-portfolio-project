class RecipesController < ApplicationController
  def index
    @user = User.all
    @recipes = Recipe.all
  end

  def new
  end

  def create
  end
end
