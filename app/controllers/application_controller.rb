class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    private
    def after_sign_in_path_for(resource)
        request.env['omniauth.origin'] || stored_location_for(resource) || uploads_path
    end
    def after_sign_out_path_for(user)
        request.referrer
    end
    def after_sign_up_path_for(resource)
        uploads_path
    end
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update, keys:[:avatar])
    end
end
