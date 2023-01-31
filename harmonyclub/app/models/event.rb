class Event < ApplicationRecord
    has_one_attached :photo
    validates :title, :eventstart, :eventend, presence: true
    validate :feature_validate

    def feature_validate
        if Event.where("featured==true").size >= 4
            errors.add(:featured, "Cannot have more than 4 featured events") unless featured == false
        end
    end
end
