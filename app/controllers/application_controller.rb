class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :is_student?, :is_tutor?, :is_teacher?, :is_admin?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user 
  end
  
  def is_teacher?
    !!current_user.teacher 
  end

  def is_student?
    !!current_user.student 
  end 

  def is_tutor?
    !!current_user.tutor
  end

  def is_admin?
    true if current_user.is_admin == true
  end 

end
