class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :notifications, dependent: :destroy
  has_many :places
  has_many :comments, dependent: :destroy
  has_many :liked_places, through: :likes, as: :place
  has_many :photos, as: :entity
  has_many :subscribers, foreign_key: :subscriber_id

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :date_of_birth, presence: true

  mount_uploader :avatar, AvatarUploader
end
