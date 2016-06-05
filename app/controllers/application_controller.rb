class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


def after_sign_in_path_for(resource)
  
  if User.find(current_user.id).Roles == "Admin"

  adminprofile_profile_path

  else

  profiles_profileview_path

end

end

def check_user

  if user_signed_in?

    if User.find(current_user.id).Roles == "Admin"
  
    else 

      redirect_to root_path, :notice => "checking redirection"

    end

  else
 
    redirect_to root_path, :notice => "checking redirection"

  end

 end


end
