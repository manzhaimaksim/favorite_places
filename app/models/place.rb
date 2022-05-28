# frozen_string_literal: true

class Place < ApplicationRecord
  belongs_to :user, required: true
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :photos, as: :entity, dependent: :destroy
end
