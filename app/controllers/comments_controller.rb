class CommentsController < ApplicationController
  def new
    binding.pry
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.new
  end

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @comments = @recipe.comments
  end


end
