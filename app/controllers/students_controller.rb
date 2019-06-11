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
      redirect_to signup_path
    end
  end

  def show
    @student = current_student
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
