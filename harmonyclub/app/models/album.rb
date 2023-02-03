class Album < ApplicationRecord
    has_one_attached :thumbnail
    has_many :photos
    validates :title, :description, presence: true
end
