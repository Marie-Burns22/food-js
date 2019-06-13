class SessionsController < ApplicationController

  def welcome
  end

  def new
  end

  def create
    # if params[:student][:name].nil? || params[:student][:name] == ""
    #   redirect_to '/login'
      @student = Student.find_by(name: params[:student][:name])
      if @student.try(:authenticate, params[:student][:password])
        session[:student_id]= @student.id
        redirect_to student_path(@student)
      else
        flash[:error] = "Sorry, login info was incorrect. Please login."
        redirect_to '/login'
      end
    end


  def destroy
    session.delete :student_id if session[:student_id]
    redirect_to "/"
  end
end
