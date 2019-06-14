class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_student
  helper_method :logged_in?

  before_action :require_login

  private

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_url
    end
  end

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def logged_in?
    # redirect_to '/' if !session[:student_id]
    # redirect_to(root_url, {:flash => { :error => "You must be logged in to do this" }}) if !session[:student_id]
    session[:student_id]
  end

end
