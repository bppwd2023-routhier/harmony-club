class SectionPolicy < ApplicationPolicy

    def section?
        user.present? && @user.dev
    end
    

end