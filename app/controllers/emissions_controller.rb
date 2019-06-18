class EmissionsController < ApplicationController

  def new
    @emission = Emission.new
    if params[:food_id]
      @emission.food = Food.find(params[:food_id])
    else
      @emission.build_food
    end
  end

  def index
    @student = Student.find(params[:student_id])
    @emissions = @student.emissions
  end

  def create
    @emission = Emission.new(emission_params)
    @emission.student_id = session[:student_id]
    if @emission.save!
      redirect_to foods_path
    else
      render :new
    end
  end

  def edit
    @emission = Emission.find_by_id(params[:id])
    flash[:message] = "Must have added the emission to edit it" if !edit_permission(@emission)
    redirect_to foods_path if !edit_permission(@emission)
    # end
  end

  def update
    @emission = Emission.find(params[:id])
    edit_permission(@emission)
    @emission.update_attributes(emission_params)
    flash[:message] = "Successfully updated emission"
    redirect_to foods_path
  end

  def destroy
    @emission = Emission.find(params[:id])
    @emission.destroy
    flash[:message] = "Emission for #{@emission.food.name} deleted."
    redirect_to foods_path
  end

  private

  def emission_params
    params.require(:emission).permit(:amount, :food_id, :student_id, :unit, :source, food_attributes: [
      :name,
      :category,
      ])
  end

  def creator
    current_student.id == @emission.student.id
  end

end
