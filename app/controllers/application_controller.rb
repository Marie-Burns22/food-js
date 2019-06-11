class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_student
  helper_method :logged_in?

  private

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def logged_in?
    redirect_to '/' if !session[:student_id]
  end

end
