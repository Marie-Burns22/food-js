class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update_attributes(food_params)
    redirect_to foods_path
  end

  def show
    @food = Food.find(params[:id])
  end

  def destroy
  end

  private

  def food_params
    params.require(:food).permit(:name, :category, :id)
  end

end
