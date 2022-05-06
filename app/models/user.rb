class User < ApplicationRecord
  has_many :notifications, dependent: :destroy

  has_many :comments, dependent: :destroy
  has_many :places, through: :comments

  has_many :places

  has_many :place_likes, dependent: :destroy
  has_many :places, through: :place_likes

  has_many :photos, as: :entity

end
