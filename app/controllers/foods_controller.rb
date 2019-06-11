class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def edit
  end

  def update
  end

  def show
    @food = Food.find(params[:id])
  end

  def destroy
  end

end
