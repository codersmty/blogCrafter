class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, notice: exception.message
  end
  protected
    def after_sign_in_path_for(resource)
        '/schedules'
    end
end
