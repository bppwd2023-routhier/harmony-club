class ApplicationController < ActionController::Base
    include Pundit::Authorization
    before_action :all_sections

    def all_sections
        @sections = Section.all
    end

    def after_sign_in_path_for(resource)
        panel_path
    end
end
