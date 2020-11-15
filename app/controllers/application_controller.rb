class ApplicationController < ActionController::Base
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
end
