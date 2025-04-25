class ApplicationController < ActionController::Base
 def after_sign_in_path_for(resource)
   if resource.is_a?(Doctor)
      doctor_index_path
    elsif resource.is_a?(Patient)
      new_patient_path
    else
      root_path
    end
  end
  protected

 def after_sign_out_path_for(resource_or_scope)
  new_user_session_path 
 end
end
