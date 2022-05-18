require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "GET /index" do
    it "returns status success" do
      get items_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /new" do
    it "returns status success" do
      get "/items/new"
      expect(response).to have_http_status(:success)
    end
  end
end
