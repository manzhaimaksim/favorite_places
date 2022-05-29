require 'rails_helper'

RSpec.describe "Photos", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/photos/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/photos/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
