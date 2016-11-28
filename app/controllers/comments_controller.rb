class CommentsController < ApplicationController
  before_action :auth_user, :recipe_finder
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to recipe_path(params[:recipe_id])
    else
      @message = @comment.errors.full_messages

      render 'index'
    end
  end

  def index
    @comments = @recipe.comments
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @comments}
    end
  end

  private

  def recipe_finder
    @recipe = Recipe.find(params[:recipe_id])
  end

  def comment_params
    params.permit(:content, :user_id, :recipe_id, :id)
  end


end
