class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  hass_one_attached :image

  validates :content, presence: true
end
