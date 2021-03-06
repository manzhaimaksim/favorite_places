# frozen_string_literal: true

class Place < ApplicationRecord
  belongs_to :user, required: true
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :title, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  def liked?(user)
    !!self.likes.find{|like| like.user_id == user.id}
  end
end
