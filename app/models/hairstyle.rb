class Hairstyle < ApplicationRecord
    validates :style, presence: true
    validates :image_url, presence: true
    validates :price, presence: true
    belongs_to :user
end
