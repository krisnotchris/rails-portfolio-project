class IngredientsController < ApplicationController
  before_action :auth_user
  def index
    @ingredients = Ingredient.all
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @ingredients}
    end
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      @message = @ingredient.errors.full_messages
      render 'new'
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @ingredient}
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:id, :ingredient_name)
  end

end
