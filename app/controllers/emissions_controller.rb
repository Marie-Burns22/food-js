class EmissionsController < ApplicationController
skip_before_action :require_login, only: [:index]

  def new
    @emission = Emission.new
    if params[:food_id]
      @emission.food = Food.find(params[:food_id])
    else
      @emission.build_food
    end
  end

  def index
    if params[:category]
      @category = params[:category]
      @foods = Food.category(@category)
    else
      params[:student_id]
      @student = Student.find(params[:student_id])
      @emissions = @student.emissions
    end
  end

  # def show
  #   @category = params[:c]
  #   @emissions = Emissions.category(category)
  # end

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
    emission_permission_check
  end

  def update
    @emission = Emission.find_by_id(params[:id])
    emission_permission_check
    @emission.update_attributes(emission_params)
    flash[:message] = "Successfully updated emission for #{@emission.food.name}"
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

  def emission_permission_check
    if !@emission
      flash[:message] = "Does not exist"
      redirect_to foods_path
    elsif !edit_permission(@emission)
      flash[:message] = "Must have added the emission to edit it"
      redirect_to foods_path
    end
  end
end
