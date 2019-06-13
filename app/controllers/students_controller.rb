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
    logged_in?
    @student = current_student
    @student_emissions = current_student.emissions
  end

  def index
    @students = Student.all
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end
end
