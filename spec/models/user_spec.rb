# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  it { should have_many(:notifications) }
  it { should have_many(:places) }
  it { should have_many(:comments) }
  # it { should have_many (:liked_places) }
  it { should have_many(:photos) }
  it { should have_many(:subscribers) }

  context "when input right data" do
    # let(:user) { User.create(username: "stan", name: "stan marsh", email: "stan@park.us", date_of_birth: "1990-01-01", sex: "male",
    #   password: "12345678", status: "active")}
    # it "returns page about that the record was created successfully" do
    #   expect(user).to be_instance_of(User)
    # end
  end

  context "when user input incorrect data" do
    # let(:user_without_username) { User.create(name: "stan marsh", email: "stan@park.us", date_of_birth: "1990-01-01", sex: "male",
    #   password: "12345678", status: "active")}
    # it "doesn't create an object" do
    #   expect(user_without_username).not_to be_persisted
    # end
  end
end
