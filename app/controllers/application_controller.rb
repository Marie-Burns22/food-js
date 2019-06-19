class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_student
  helper_method :logged_in?
  helper_method :edit_permission
  # helper_method :object_permission_check

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

  def logged_in?  #is this method needed?
    session[:student_id]
  end

  def edit_permission(emission) #could logged_in? be session[:student_id]
    emission.student == current_student
  end

  # def object_permission_check(object)
  #   if !object
  #     flash[:message] = "Does not exist"
  #     redirect_to foods_path
  #   elsif !edit_permission(object)
  #     flash[:message] = "Must have added the emission to edit it"
  #     redirect_to foods_path
  #   end
  # end

end
