require 'rails_helper'

RSpec.describe PlaceLike, type: :model do
  it { should belong_to(:user)}
  it { should belong_to(:place)}
end
