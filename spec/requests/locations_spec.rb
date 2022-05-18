require 'rails_helper'

RSpec.describe "Locations", type: :request do
  describe "GET /locations" do
    it "returns status success" do
      get locations_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /new" do
    it "returns status success" do
      get "/locations/new"
      expect(response).to have_http_status(:success)
    end
  end
end