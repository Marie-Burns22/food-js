class FoodsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]

  def index
    @foods = Food.all
  end

  def edit
    @food = Food.find_by_id(params[:id])
    food_check
  end

  def update
    @food = Food.find_by_id(params[:id])
    redirect_to foods_path if !@food
    @food.update_attributes(food_params)
    redirect_to foods_path
  end

  def show
    @food = Food.find_by_id(params[:id])
    food_check
  end

  def destroy
  end

  private

  def food_params
    params.require(:food).permit(:name, :category, :id)
  end

  def food_check
    if !@food
      flash[:message] = "Food does not exist"
      redirect_to foods_path
    end
  end

end
