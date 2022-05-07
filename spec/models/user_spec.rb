require 'rails_helper'

RSpec.describe User, type: :model do
  it {should have_many (:notifications)}
  it {should have_many (:places)}
  it {should have_many (:comments)}
  # it {should have_many (:liked_places)}
  it {should have_many (:photos)}
  it {should have_many (:subscribers)}
end
