class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validates :photo, presence: true
  validates :title, presence: true
  validates :alt, presence: true

  mount_uploader :photo, PhotoUploader
end
