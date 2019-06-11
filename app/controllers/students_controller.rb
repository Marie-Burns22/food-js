class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    raise params.inspect
  end

  def show

  end

  def index

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
