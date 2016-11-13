class CommentsController < ApplicationController
  def new
    binding.pry
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to recipe_comments_path
    else
      render 'new'
    end
  end

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @comments = @recipe.comments
  end

  private

  def comment_params
    params.permit(:content, :user_id, :recipe_id, :id)
  end


end
