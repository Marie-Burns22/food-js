class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:student][:name].nil? || params[:student][:name] == ""
      redirect_to '/login'
    else
      student = Student.find_by(name: params[:student][:name])
      if student
        session[:student_id]= student.id
        redirect_to "/foods"
      else
        redirect_to '/login'
      end
    end
  end

  def destroy
    session.delete :student_id if session[:student_id]
    redirect_to "/"
  end
end
