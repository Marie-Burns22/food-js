class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:welcome, :new, :create, :omniauth, :auth]

  def welcome
  end

  def new
  end

  def create
    @student = Student.find_by(name: params[:student][:name])
    if @student.try(:authenticate, params[:password])
      session[:student_id]= @student.id
      redirect_to student_path(@student)
    else
      flash[:error] = "Sorry, login info was incorrect. Please login."
      redirect_to '/'
    end
  end

  def destroy
    session.delete :student_id if session[:student_id]
    redirect_to "/"
  end

  def omniauth

    if !auth[:info][:email]
      flash[:error] = "Your email must be public to login with google or github."
      redirect_to '/'
    else
      @student = Student.from_omniauth(auth)
      session[:student_id] = @student.id
      # redirect_to student_path(@student)
      redirect_to student_emissions_path(@student.id)
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
