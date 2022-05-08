class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :notifications, dependent: :destroy
  has_many :places
  has_many :comments, dependent: :destroy
  has_many :places, through: :comments
  has_many :liked_places, through: :likes, as: :place
  has_many :photos, as: :entity
  has_many :subscribers, foreign_key: :subscriber_id
end
