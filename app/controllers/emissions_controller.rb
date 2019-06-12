class EmissionsController < ApplicationController

  def new
    @emission = Emission.new
    @emission.food.build
  end

  def create
    Emission.create(emission_params)
  end

  def index
    redirect_to '/foods'
  end

  def edit
    @emission = Emission.find_by(id: params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def emission_params
    params.require(:emission).permit(:amount, :unit, :source, food_attributes: [
      :name,
      :category,
      ])
  end

end
