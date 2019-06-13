class EmissionsController < ApplicationController

  def new
    @emission = Emission.new
    @emission.build_food
  end

  def create
    @emission = Emission.new(emission_params)
    @emission.student_id = current_student.id
    @emission.save

    redirect_to foods_path
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
    params.require(:emission).permit(:amount, :food_id, :student_id, :unit, :source, foods_attributes: [
      :name,
      :category,
      ])
  end

end
