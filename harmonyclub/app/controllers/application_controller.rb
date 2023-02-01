class ApplicationController < ActionController::Base
    include Pundit::Authorization
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    before_action :all_sections

    def all_sections
        @sections = Section.all
    end

    def after_sign_in_path_for(resource)
        panel_path
    end
    def user_not_authorized
        flash[:alert] = "You are not authorized to perform this action."
        redirect_back(fallback_location: root_path)
    end
end
