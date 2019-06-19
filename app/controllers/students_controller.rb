class StudentsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

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

  def show  #change this to a nested route like foods on the emission index view
    @student = Student.find(params[:id])
    @student_emissions = @student.emissions
  end

  def index
    @students = Student.all
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(student_params)
    redirect_to student_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end
end
