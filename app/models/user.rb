class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :comments, dependent: :destroy
  has_many :liked_places, through: :likes, as: :place
  has_many :notifications, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :places, dependent: :destroy
  has_many :subscribers, foreign_key: :subscriber_id

  validates :username, presence: true, uniqueness: true, length: { in: 3..16 }
  validates :email, presence: true, uniqueness: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/
  validates :name, presence: true, length: { in: 3..32 }
  validates :date_of_birth, presence: true, inclusion: { in: Time.new(1900, 1, 1)..((Time.now - 13.year)) }

  mount_uploader :avatar, AvatarUploader
end
