class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception

    def respond_modal_with(*args, &blk)
        options = args.extract_options!
        options[:responder] = ModalResponder
        respond_with *args, options, &blk
    end
    private
    def after_sign_in_path_for(resource)
        request.env['omniauth.origin'] || stored_location_for(resource) || courses_path
    end
    def after_sign_out_path_for(user)
        request.referrer
    end
    def after_sign_up_path_for(resource)
        courses_path
    end
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update, keys:[:avatar])
    end
end
