class RecipesController < ApplicationController
  before_action :auth_user
  def index
    @sorted_recipes = Recipe.sort_by_rating
  end

  def new
    @recipe = Recipe.new
    @ingredient = Ingredient.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def create
    @recipe = Recipe.create(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      @message = @recipe.errors.full_messages
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
    respond_to do |format|
      format.html {render :show}
      format.json {render json:@recipe}
    end
  end

  private

  def recipe_params
     params.require(:recipe).permit(:user_id, :name, :rating, :description, ingredient_ids: [], ingredients_attributes: [:ingredient_name])
   end
end
