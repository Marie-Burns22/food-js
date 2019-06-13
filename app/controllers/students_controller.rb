class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      session[:student_id] = @student.id
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def show
    # current student and logged in code removed to test out update form
    # logged_in?
    # @student = current_student
    @student = Student.find(params[:id])
    @student_emissions = @student.emissions
    # @student_emissions = current_student.emissions
  end

  def index
    @students = Student.all
  end

# For edit action, which method is more secure for making sure only the current_student is able to update their own information, not other students'
  def edit
    # logged_in?
    @student = Student.find(params[:id])

    # change to one of the following for final product
    # @student = current_student
    # @student = Student.find(student_params[:id])
    # @student = Student.find(params[:id])
    # @student = Student.find(current_student[:id])
  end

# for the update action which method to find the student to update is most secure?
  def update
    @student = Student.find(params[:id])
    # @student = Student.find(params[:id])
    # @student = Student.find(current_student[:id])
    @student.update_attributes(student_params)
    redirect_to student_path
  end

  def destroy

  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end
end
