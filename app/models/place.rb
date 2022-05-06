class Place < ApplicationRecord

  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  has_many :place_likes, dependent: :destroy
  has_many :users, through: :place_likes

  belongs_to :user

  has_many :photos, as: :entity

end
