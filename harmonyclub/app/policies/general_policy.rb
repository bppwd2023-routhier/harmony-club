class GeneralPolicy < ApplicationPolicy

    def signed_in?
        user.present?
    end
    

end