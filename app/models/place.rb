class Place < ApplicationRecord

  has_many :comments, dependent: :destroy

  has_many :likes

  belongs_to :user

  has_many :photos, as: :entity

end
